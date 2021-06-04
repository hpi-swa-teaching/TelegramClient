testing
testAddNewestMessage

	self chat addNewestMessage: (TCCMessage new message: 'test').
	self assert: 'test' equals: self chat messages second message.