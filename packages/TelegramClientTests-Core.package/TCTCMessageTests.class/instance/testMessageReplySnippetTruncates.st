testing
testMessageReplySnippetTruncates

	| message |
	message := TCTMMocks mockTextMessageWith: self core.
	message text: ((String new: 250) atAllPut: $A).
	 
	self assert: message asReplySnippet size - message senderName size - 4 <= (TCCUserMessage maxReplySnippetSize)
