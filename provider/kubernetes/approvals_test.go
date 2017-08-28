package kubernetes

import (
	"testing"

	"github.com/rusenask/keel/types"

	meta_v1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/client-go/pkg/api/v1"
	"k8s.io/client-go/pkg/apis/extensions/v1beta1"
)

func TestCheckRequestedApproval(t *testing.T) {
	fp := &fakeImplementer{}
	fp.namespaces = &v1.NamespaceList{
		Items: []v1.Namespace{
			v1.Namespace{
				meta_v1.TypeMeta{},
				meta_v1.ObjectMeta{Name: "xxxx"},
				v1.NamespaceSpec{},
				v1.NamespaceStatus{},
			},
		},
	}
	fp.deploymentList = &v1beta1.DeploymentList{
		Items: []v1beta1.Deployment{
			v1beta1.Deployment{
				meta_v1.TypeMeta{},
				meta_v1.ObjectMeta{
					Name:      "dep-1",
					Namespace: "xxxx",
					Labels:    map[string]string{types.KeelPolicyLabel: "all", types.KeelMinimumApprovalsLabel: "1"},
				},
				v1beta1.DeploymentSpec{
					Template: v1.PodTemplateSpec{
						Spec: v1.PodSpec{
							Containers: []v1.Container{
								v1.Container{
									Image: "gcr.io/v2-namespace/hello-world:1.1.1",
								},
							},
						},
					},
				},
				v1beta1.DeploymentStatus{},
			},
		},
	}
	approver := approver()
	provider, err := NewProvider(fp, &fakeSender{}, approver)
	if err != nil {
		t.Fatalf("failed to get provider: %s", err)
	}
	// creating "new version" event
	repo := types.Repository{
		Name: "gcr.io/v2-namespace/hello-world",
		Tag:  "1.1.2",
	}

	deps, err := provider.processEvent(&types.Event{Repository: repo})
	if err != nil {
		t.Errorf("failed to get deployments: %s", err)
	}

	if len(deps) != 0 {
		t.Errorf("expected to find 0 updated deployment but found %d", len(deps))
	}

	// checking approvals
	approval, err := provider.approvalManager.Get("xxxx/dep-1:1.1.2")
	if err != nil {
		t.Fatalf("failed to find approval, err: %s", err)
	}

	if approval.Provider != types.ProviderTypeKubernetes {
		t.Errorf("wrong provider: %s", approval.Provider)
	}
}