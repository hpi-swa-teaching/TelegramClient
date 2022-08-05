testing
testGetMessageById

	| message |
	
	message := self chat getMessageById: 16.
	self assert: '4' equals: message asText