accessing
replyText

	| message |
	message := self chat getMessageById: self replyToMessageId.

	^ message asReplySnippet