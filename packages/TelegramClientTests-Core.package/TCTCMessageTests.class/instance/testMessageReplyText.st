testing
testMessageReplyText

	| chat replyMessage originalMessage |
	chat := TCTMMocks mockPrivateChat.
	originalMessage := TCTMMocks mockTextMessageWith: self core inChat: chat. 
	replyMessage := TCTMMocks mockTextReplyMessageWith: self core inChat: chat.
	chat addNewestMessage: replyMessage.
	
	self assert: replyMessage replyText equals: TCCNotLoadedMessage infoText.
	
	chat addNewestMessage: originalMessage.
		
	self assert: replyMessage replyText equals: originalMessage asReplySnippet.