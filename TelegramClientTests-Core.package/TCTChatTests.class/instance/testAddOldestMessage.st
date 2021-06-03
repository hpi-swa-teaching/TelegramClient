testing
testAddOldestMessage

	self chat addOldestMessage: (TCCMessage new message: 'test').
	self assert: 'test' equals: self chat messages last message.