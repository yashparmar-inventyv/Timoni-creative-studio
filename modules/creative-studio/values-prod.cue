

values: {
	metadata: {
		name:      *"creative-studio-prod" | string
		namespace: *"creative-studio-prod" | string
	}
	app: "creative-studio"
	image: {
		repository: "13.200.24.3/creative-studio-app/creative-studio-prod"
		digest:  "sha256:6c5fe214d6560c81e01b2f15c8e5ebfb31253ea0b84a6d79a244ce53ae85b783"
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
