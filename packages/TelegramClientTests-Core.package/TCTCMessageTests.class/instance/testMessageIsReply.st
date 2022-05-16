testing
testMessageIsReply

	| chat replyMessage originalMessage |
	chat := TCTMMocks mockPrivateChat.
	originalMessage := TCTMMocks mockTextMessageWith: self core inChat: chat.
	replyMessage := TCTMMocks mockTextReplyMessageWith: self core inChat: chat.

	self assert: originalMessage isReply not.
	self assert: replyMessage isReply