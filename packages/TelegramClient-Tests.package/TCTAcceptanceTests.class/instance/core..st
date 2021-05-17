accessing
core: aCore

	aCore when: #newMessageReceived send: #newMessageReceived: to: self.
	core := aCore.