accessing
core: aCore

	"TCUMain core: aCore."
	core := aCore.
	aCore when: #newMessageReceived send: #newMessageReceived: to: self.