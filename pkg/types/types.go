/*
SPDX-License-Identifier: Apache-2.0

Copyright Contributors to the Submariner project.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package types

import (
	subv1 "github.com/submariner-io/submariner/pkg/apis/submariner.io/v1"
	"github.com/submariner-io/submariner/pkg/cidr"
	k8snet "k8s.io/utils/net"
)

type SubmarinerCluster struct {
	ID   string            `json:"id"`
	Spec subv1.ClusterSpec `json:"spec"`
}

type SubmarinerEndpoint struct {
	Spec subv1.EndpointSpec `json:"spec"`
}

type SubmarinerSpecification struct {
	Broker                        string
	CableDriver                   string
	ClusterID                     string
	Namespace                     string
	PublicIP                      string
	GlobalCidr                    []string
	ServiceCidr                   []string
	ClusterCidr                   []string
	HealthCheckInterval           int
	MetricsPort                   int `default:"32780"`
	HealthCheckMaxPacketLossCount int
	Debug                         bool
	HaltOnCertError               bool `split_words:"true"`
	Uninstall                     bool
	HealthCheckEnabled            bool `default:"true"`
	NATEnabled                    bool
}

func (subSpec *SubmarinerSpecification) GetIPFamilies() []k8snet.IPFamily {
	return cidr.ExtractIPFamilies(subSpec.ClusterCidr)
}
