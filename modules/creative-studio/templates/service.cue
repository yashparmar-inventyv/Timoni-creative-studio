package templates

import (
	corev1 "k8s.io/api/core/v1"
)

#Service: corev1.#Service & {
	#config: #Config

	apiVersion: "v1"
	kind: "Service"

	metadata: {
		name: #config.metadata.name + "-service"
		namespace: #config.metadata.namespace
	}

	spec: corev1.#ServiceSpec & {
		type: "NodePort"

		selector: {
			app: #config.metadata.name
		}

		ports: [
			{
				port: #config.service.port
				targetPort: 3000
				if #config.service.nodePort != _|_ {
					nodePort: #config.service.nodePort
				}
				protocol: "TCP"
				name: "http"
			},
		]
	}
}
