testing
testSenderNameInNonChannelMessage

	| chat message |
	chat := TCTMMocks mockSupergroupChat.
	message := TCTMMocks mockMessageIn: chat with: self core.
	
	self assert: TCTMMocks mockUser1 fullName equals: message senderName.