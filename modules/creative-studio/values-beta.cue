

values: {
	metadata: {
		name:      *"creative-studio-beta" | string
		namespace: *"creative-studio-beta" | string
	}
	app: "creative-studio"
	image: {
		repository: "13.200.24.3/creative-studio-app/creative-studio-beta"
		digest:  "sha256:3b92270dbc8600321566fa30bfaee4bfb7bbc74b1a4b60c06610aa65ea71011d"
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
	message: "creative studio running (beta)"
}
