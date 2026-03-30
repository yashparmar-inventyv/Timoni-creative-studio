@if(!debug)
package main

values: {
	metadata: {
		name:      *"creative-studio-beta" | string
		namespace: *"creative-studio-beta" | string
	}
	app: "creative-studio"
	image: {
		repository: "13.206.68.218/creative-studio-app/creative-studio-app"
		digest:  "sha256:cced4f5b891341426e44c4801a9c5a4822cd79936a26a2f31a14462113bfb85e"
		tag:  ""
	}
	replicas: 3
	service: {
		port:     5000
		nodePort: 32000
	}
	strategy: {
		maxUnavailable:  1
		maxSurge:        1
		minReadySeconds: 5
	}
	resources: {
		requests: {
			cpu:    "200m"
			memory: "256Mi"
		}
		limits: {
			cpu:    "400m"
			memory: "512Mi"
		}
	}
	quota: {
		requests: {
			cpu:    "800m"
			memory: "768Mi"
		}
		limits: {
			cpu:    "1500m"
			memory: "1.5Gi"
		}
		pods: "10"
	}
	limits: {
		default: {
			cpu:    "400m"
			memory: "512Mi"
		}
		defaultRequest: {
			cpu:    "150m"
			memory: "256Mi"
		}
	}
	storage: {
		enabled: true
		size:    "1Gi"
		class:   "local-path"
	}
	message: "creative studio running (prod)"
}
