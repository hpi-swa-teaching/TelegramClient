testing
testGetMessageById

	| message |
	
	message := self chat getMessageById: 16.
	self assert: message asText equals: '4'.
	
	message := self chat getMessageById: 17.
	self assert: message asText equals: 'Message not loaded'.