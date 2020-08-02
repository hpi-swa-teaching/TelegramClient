testing
testAddNewestMessage

	self chat addNewestMessage: (TCCMessage new message: 'test').
	self assert:self  chat messages second message equals: 'test'.