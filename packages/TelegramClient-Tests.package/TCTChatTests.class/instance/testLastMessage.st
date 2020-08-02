testing
testLastMessage

	self chat lastMessage: 'test'.
	self assert: self chat lastMessage equals: 'test'.