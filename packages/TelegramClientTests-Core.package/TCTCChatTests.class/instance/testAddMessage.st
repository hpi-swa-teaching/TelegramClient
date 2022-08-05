testing
testAddMessage

	| message |
	message := TCCTextMessage new id: 13.
	self chat addMessage: message.
	self assert: 5 equals: self chat messages size.
	self assert: message equals: (self chat getMessageById: 13)