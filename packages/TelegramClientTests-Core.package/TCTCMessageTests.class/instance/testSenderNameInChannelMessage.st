testing
testSenderNameInChannelMessage

	| channel message |
	channel := TCTMMocks mockChannelSupergroupChat.
	message := TCTMMocks mockMessageIn: channel with: self core.
	
	self assert: channel title equals: message senderName.