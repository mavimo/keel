module github.com/keel-hq/keel

go 1.14

require (
	cloud.google.com/go v0.84.0
	github.com/Azure/go-ansiterm v0.0.0-20170929234023-d6e3b3328b78
	github.com/BurntSushi/toml v0.3.1
	github.com/MakeNowJust/heredoc v0.0.0-20171113091838-e9091a26100e
	github.com/Masterminds/goutils v1.1.0
	github.com/Masterminds/semver v1.4.2
	github.com/Masterminds/sprig v2.19.0+incompatible
	github.com/PuerkitoBio/purell v1.1.1
	github.com/PuerkitoBio/urlesc v0.0.0-20170810143723-de5bf2ad4578
	github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc
	github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf
	github.com/aws/aws-sdk-go v1.20.0
	github.com/beorn7/perks v1.0.0
	github.com/chai2010/gettext-go v0.0.0-20170215093142-bf70f2a70fb1
	github.com/cyphar/filepath-securejoin v0.2.2
	github.com/daneharrigan/hipchat v0.0.0-20170512185232-835dc879394a
	github.com/davecgh/go-spew v1.1.1
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/docker/distribution v2.6.0-rc.1.0.20180227233429-6fca8d6e6713+incompatible
	github.com/docker/docker v17.12.0-ce-rc1.0.20180612054059-a9fbbdc8dd87+incompatible
	github.com/docker/libtrust v0.0.0-20160708172513-aabc10ec26b7
	github.com/docker/spdystream v0.0.0-20181023171402-6480d4af844c
	github.com/emicklei/go-restful v2.9.6+incompatible
	github.com/evanphx/json-patch v3.0.0+incompatible
	github.com/exponent-io/jsonpath v0.0.0-20151013193312-d6023ce2651d
	github.com/ghodss/yaml v1.0.0
	github.com/go-openapi/jsonpointer v0.19.0
	github.com/go-openapi/jsonreference v0.19.0
	github.com/go-openapi/spec v0.19.0
	github.com/go-openapi/swag v0.19.0
	github.com/gobwas/glob v0.2.3
	github.com/gogo/protobuf v1.2.1
	github.com/golang/groupcache v0.0.0-20200121045136-8c9f03a8e57e
	github.com/golang/protobuf v1.5.2
	github.com/google/btree v1.0.0
	github.com/google/go-querystring v1.0.0
	github.com/google/gofuzz v1.0.0
	github.com/google/uuid v1.1.2
	github.com/googleapis/gnostic v0.2.0
	github.com/gorilla/mux v1.7.2
	github.com/gorilla/websocket v1.4.0
	github.com/gregjones/httpcache v0.0.0-20190611155906-901d90724c79
	github.com/hashicorp/golang-lru v0.5.1
	github.com/huandu/xstrings v1.2.0
	github.com/imdario/mergo v0.3.7
	github.com/inconshreveable/mousetrap v1.0.0
	github.com/jinzhu/gorm v1.9.9
	github.com/jinzhu/inflection v1.0.0
	github.com/jmespath/go-jmespath v0.0.0-20180206201540-c2b33e8439af
	github.com/jmoiron/sqlx v1.2.0
	github.com/json-iterator/go v1.1.6
	github.com/konsorten/go-windows-terminal-sequences v1.0.2
	github.com/lib/pq v1.1.1
	github.com/liggitt/tabwriter v0.0.0-20181228230101-89fcab3d43de
	github.com/mailru/easyjson v0.0.0-20190403194419-1ea4449da983
	github.com/mattn/go-sqlite3 v1.10.0
	github.com/matttproud/golang_protobuf_extensions v1.0.1
	github.com/mfridman/tparse v0.7.4 // indirect
	github.com/mitchellh/go-wordwrap v1.0.0
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd
	github.com/modern-go/reflect2 v1.0.1
	github.com/nlopes/slack v0.5.0
	github.com/opencontainers/go-digest v1.0.0-rc1
	github.com/petar/GoLLRB v0.0.0-20190514000832-33fb24c13b99
	github.com/peterbourgon/diskv v2.0.1+incompatible // indirect
	github.com/pkg/errors v0.8.1
	github.com/prometheus/client_golang v0.9.4
	github.com/prometheus/client_model v0.0.0-20190812154241-14fe0d1b01d4
	github.com/prometheus/common v0.4.1
	github.com/prometheus/procfs v0.0.2
	github.com/rubenv/sql-migrate v0.0.0-20190327083759-54bad0a9b051
	github.com/rusenask/cron v1.1.0
	github.com/rusenask/docker-registry-client v0.0.0-20190426095143-dbc590492100
	github.com/russross/blackfriday v1.5.2
	github.com/ryanuber/go-glob v0.0.0-20160226084822-572520ed46db
	github.com/shurcooL/sanitized_anchor_name v1.0.0
	github.com/sirupsen/logrus v1.4.2
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.3
	github.com/stretchr/testify v1.6.1
	github.com/tbruyelle/hipchat-go v0.0.0-20160921153256-749fb9e14beb
	github.com/urfave/negroni v0.3.0
	go.opencensus.io v0.23.0
	golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9
	golang.org/x/net v0.0.0-20210503060351-7fd8e65b6420
	golang.org/x/oauth2 v0.0.0-20210628180205-a41e5a781914
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c
	golang.org/x/sys v0.0.0-20210616094352-59db8d763f22
	golang.org/x/text v0.3.6
	golang.org/x/time v0.0.0-20191024005414-555d28b269f0
	google.golang.org/api v0.50.0
	google.golang.org/appengine v1.6.7
	google.golang.org/genproto v0.0.0-20210624195500-8bfb893ecb84
	google.golang.org/grpc v1.38.0
	gopkg.in/alecthomas/kingpin.v2 v2.2.6
	gopkg.in/gorp.v1 v1.7.2
	gopkg.in/inf.v0 v0.9.1
	gopkg.in/square/go-jose.v2 v2.3.1
	gopkg.in/yaml.v2 v2.2.2
	k8s.io/api v0.0.0-20190516230258-a675ac48af67
	k8s.io/apiextensions-apiserver v0.0.0-20190516231611-bf6753f2aa24
	k8s.io/apimachinery v0.0.0-20190404173353-6a84e37a896d
	k8s.io/apiserver v0.0.0-20190516230822-f89599b3f645
	k8s.io/cli-runtime v0.0.0-20190516231937-17bc0b7fcef5
	k8s.io/client-go v11.0.1-0.20190516230509-ae8359b20417+incompatible
	k8s.io/cloud-provider v0.0.0-20190323031113-9c9d72d1bf90
	k8s.io/helm v2.14.1+incompatible
	k8s.io/klog v0.3.3
	k8s.io/kube-openapi v0.0.0-20190603182131-db7b694dc208
	k8s.io/kubernetes v1.14.2
	k8s.io/utils v0.0.0-20190607212802-c55fbcfc754a
	sigs.k8s.io/kustomize v2.0.3+incompatible
	sigs.k8s.io/yaml v1.1.0
	vbom.ml/util v0.0.0-20180919145318-efcd4e0f9787
)
