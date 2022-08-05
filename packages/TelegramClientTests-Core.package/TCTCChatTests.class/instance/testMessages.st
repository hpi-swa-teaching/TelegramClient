testing
testMessages

	| message1 message2 messageIds messages |
	
	message1 := TCCMessage new id: 1.
	message2 := TCCMessage new id: 2.
	messageIds := OrderedCollection newFrom: {message1 id. message2 id}.
	messages := OrderedCollection newFrom: {message1. message2}.

	self chat messageIds: messageIds.
	self chat addMessage: message1.
	self chat addMessage: message2.

	self assert: messageIds equals: self chat messageIds.
	self assert: message1 equals: (self chat messageDictionary at: message1 id) value.
	self assert: message2 equals: (self chat messageDictionary at: message2 id) value.
	self assert: messages equals: self chat messages