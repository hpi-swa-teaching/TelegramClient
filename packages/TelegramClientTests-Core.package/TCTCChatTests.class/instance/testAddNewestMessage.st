testing
testAddNewestMessage

	self chat addNewestMessage: (TCCTextMessage new text: 'test').
	self assert: 'test' equals: self chat messages first asText.