testing
testLastMessage

	self chat lastMessage: 'test'.
	self assert: 'test' equals: self chat lastMessage.