testing
testMessageIsReply

	| chat replyMessage originalMessage |
	chat := TCTMMocks mockPrivateChat.
	originalMessage := TCTMMocks mockTextMessageWith: self core inChat: chat.
	replyMessage := TCTMMocks mockTextReplyMessageWith: self core inChat: chat.

	self deny: originalMessage isReply.
	self assert: replyMessage isReply.