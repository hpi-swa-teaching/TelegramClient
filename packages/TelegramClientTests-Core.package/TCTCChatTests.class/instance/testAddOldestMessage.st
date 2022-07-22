testing
testAddOldestMessage

	self chat addOldestMessage: (TCCTextMessage new
		text: 'test';
		date: (DateAndTime fromUnixTime: 0)
	).
	self assert: 'test' equals: self chat messages last asText.