

values: {
	metadata: {
		name:      *"creative-studio-dev" | string
		namespace: *"creative-studio-dev" | string
	}
	app: "creative-studio"
	image: {
		repository: "13.200.24.3/creative-studio-app/creative-studio-app"
		digest:     "sha256:b809686a71df0a87766925b93f1c55acdaeb56433061e5426b01dfb9b0587347"
		tag:        ""
	}
	replicas: 1
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
			cpu:    "100m"
			memory: "128Mi"
		}
		limits: {
			cpu:    "200m"
			memory: "256Mi"
		}
	}
	quota: {
		requests: {
			cpu:    "400m"
			memory: "512Mi"
		}
		limits: {
			cpu:    "800m"
			memory: "1Gi"
		}
		pods: "10"
	}
	limits: {
		default: {
			cpu:    "200m"
			memory: "256Mi"
		}
		defaultRequest: {
			cpu:    "100m"
			memory: "128Mi"
		}
	}
	storage: {
		enabled: true
		size:    "1Gi"
		class:   "local-path"
	}
	message: "creative studio running (dev)"
}
