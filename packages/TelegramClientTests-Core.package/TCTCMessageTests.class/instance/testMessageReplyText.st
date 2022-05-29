testing
testMessageReplyText

	| chat replyMessage originalMessage |
	chat := (TCTMMocks mockPrivateChat core: self core).
	originalMessage := TCTMMocks mockTextMessageWith: self core inChat: chat.
	replyMessage := TCTMMocks mockTextReplyMessageWith: self core inChat: chat.
	chat addNewestMessage: replyMessage.

	self assert: TCCNotLoadedMessage infoText equals: replyMessage replyText.

	chat addNewestMessage: originalMessage.

	self assert: replyMessage replyText equals: originalMessage asReplySnippet.