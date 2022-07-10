testing
testLastMessage

	self chat lastMessageSnippet: 'test'.
	self assert: 'test' equals: self chat lastMessageSnippet.