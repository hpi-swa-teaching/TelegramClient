testing
testSenderNameInChannelMessage

	| chat message |
	chat := TCTMMocks mockChannelSupergroupChat.
	message := TCTMMocks mockMessageFrom: chat with: self core.
	
	self assert: chat title equals: message senderName.