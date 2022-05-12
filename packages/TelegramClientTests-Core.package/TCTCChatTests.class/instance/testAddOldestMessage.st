testing
testAddOldestMessage

	self chat addOldestMessage: (TCCTextMessage new text: 'test').
	self assert: 'test' equals: self chat messages last asText.