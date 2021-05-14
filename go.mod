module github.com/submariner-io/submariner

go 1.13

require (
	github.com/cenk/hub v1.0.1 // indirect
	github.com/coreos/go-iptables v0.6.0
	github.com/ebay/go-ovn v0.1.1-0.20210414223409-7376ba97f8cd
	github.com/go-ping/ping v0.0.0-20210506233800-ff8be3320020
	github.com/kelseyhightower/envconfig v1.4.0
	github.com/onsi/ginkgo v1.16.2
	github.com/onsi/gomega v1.12.0
	github.com/pkg/errors v0.9.1
	github.com/prometheus/client_golang v1.10.0
	github.com/prometheus/common v0.24.0 // indirect
	github.com/rdegges/go-ipify v0.0.0-20150526035502-2d94a6a86c40
	github.com/submariner-io/admiral v0.9.0-rc0.0.20210506031438-f6fdcbce358a
	github.com/submariner-io/shipyard v0.9.1-0.20210506024409-3beff067454a
	github.com/vishvananda/netlink v1.1.0
	github.com/vishvananda/netns v0.0.0-20210104183010-2eb08e3e575f // indirect
	golang.org/x/crypto v0.0.0-20210513164829-c07d793c2f9a // indirect
	golang.org/x/net v0.0.0-20210510120150-4163338589ed // indirect
	golang.org/x/sys v0.0.0-20210514084401-e8d321eab015
	golang.org/x/term v0.0.0-20210503060354-a79de5458b56 // indirect
	golang.zx2c4.com/wireguard v0.0.0-20210513230823-951bc9ec40e9 // indirect
	golang.zx2c4.com/wireguard/wgctrl v0.0.0-20210506160403-92e472f520a5
	google.golang.org/protobuf v1.26.0
	k8s.io/api v0.21.0
	k8s.io/apimachinery v0.21.0
	k8s.io/client-go v1.5.2
	k8s.io/klog v1.0.0
	k8s.io/klog/v2 v2.8.0 // indirect
	sigs.k8s.io/controller-runtime v0.8.3
	sigs.k8s.io/mcs-api v0.1.0
	sigs.k8s.io/structured-merge-diff/v4 v4.1.1 // indirect
)

// Pinned to kubernetes-1.19.10
replace (
	k8s.io/api => k8s.io/api v0.19.10
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.19.10
	k8s.io/apimachinery => k8s.io/apimachinery v0.19.10
	k8s.io/client-go => k8s.io/client-go v0.19.10
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.19.10
)

// Security fixes
replace (
	// CVE-2020-9283
	golang.org/x/crypto => golang.org/x/crypto v0.0.0-20210421170649-83a5a9bb288b
	// CVE-2020-14040
	golang.org/x/text => golang.org/x/text v0.3.6
)

// shipyard replacement until https://github.com/submariner-io/shipyard/pull/553 is merged
replace github.com/submariner-io/shipyard => github.com/Jaanki/shipyard v0.9.0-m2.0.20210514092257-14beabdd2d9f
