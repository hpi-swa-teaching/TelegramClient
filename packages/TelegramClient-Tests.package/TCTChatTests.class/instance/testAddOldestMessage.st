testing
testAddOldestMessage

	self chat addOldestMessage: (TCCMessage new message: 'test').
	self assert: self chat messages last message equals: 'test'.