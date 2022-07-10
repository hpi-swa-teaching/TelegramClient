testing
testAddNewestMessage

	self chat addNewestMessage: (TCCTextMessage new
		text: 'test';
		date: DateAndTime today).
	self assert: 'test' equals: self chat messages first asText.