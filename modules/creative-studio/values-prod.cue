

values: {
	metadata: {
		name:      *"creative-studio-prod" | string
		namespace: *"creative-studio-prod" | string
	}
	app: "creative-studio"
	image: {
		repository: "13.200.24.3/creative-studio-app/creative-studio-prod"
		digest: "sha256:06c0ff53993b08ab06ab36e3e2cab4255d6c3388fc9fd5dd4bad02187e5f298b"
		tag: ""
	}
	replicas: 1
	service: {
		port:     5000
		nodePort: 30000
	}
	strategy: {
		maxUnavailable:  1
		maxSurge:        1
		minReadySeconds: 5
	}
	resources: {
		requests: {
			cpu:    "100m"
			memory: "256Mi"
		}
		limits: {
			cpu:    "200m"
			memory: "512Mi"
		}
	}
	quota: {
		requests: {
			cpu:    "800m"
			memory: "768Mi"
		}
		limits: {
			cpu:    "3000m"
    		memory: "2Gi"
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
