

values: {
	metadata: {
		name:      *"creative-studio-dev" | string
		namespace: *"creative-studio-dev" | string
	}
	app: "creative-studio"
	image: {
		repository: "13.200.24.3/creative-studio-app/creative-studio-dev"
		digest:  "sha256:19c3165373212d0b85aa579d86dbfb9ae1a1219cc617ee941ba097a6538e2c60"
		tag:  ""
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
