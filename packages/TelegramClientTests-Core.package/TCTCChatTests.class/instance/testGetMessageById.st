testing
testGetMessageById

	| message |
	
	message := self chat getMessageById: 16.
	self assert: '4' equals: message asText.
	
	message := self chat getMessageById: 17.
	self assert: 'Message not loaded' equals: message asReplySnippet.