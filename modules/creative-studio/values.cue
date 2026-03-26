@if(!debug)
package main

values: {
	metadata: {
		name:      *"creative-studio" | string
		namespace: *"creative-studio" | string
	}
	image: {
		repository: *"demo.goharbor.io/creative-studio/creative-studio" | string
		digest:     *"" | string
		tag:        *"" | string
	}
	message: *"creative-studio running" | string
}
