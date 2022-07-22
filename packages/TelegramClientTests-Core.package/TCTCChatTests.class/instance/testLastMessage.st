testing
testLastMessage

	self chat lastMessageText: 'test'.
	self assert: 'test' equals: self chat lastMessageText.
