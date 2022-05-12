testing
testMessageSenderTriggersUserRequest

	| messageEvent userJson |
	self core when: #newMessageReceived send: #newMessageReceived: to: self.
	self core chatsHandler chats add: TCTMMocks mockPrivateChat.

	self receivedMessage: nil.
	messageEvent := TCTMMocks mockMessageEventFrom: TCTMMocks mockPrivateChat id.

	self core handleEvent: messageEvent.
	1 seconds wait.

	userJson := TCTMMocks mockUserJson1.
	self mockTeleClient onRequestType: 'getUser' respond: userJson.

	self assert: self receivedMessage notNil.
	self assert: TCTMMocks mockUser1 fullName equals: self receivedMessage senderName.
	self assert: TCTMMocks mockPrivateChat id equals: self receivedMessage chat id.
	self assert: TCTMMocks mockText equals: self receivedMessage asText.