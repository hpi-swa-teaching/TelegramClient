testing
testMessageSenderTriggersUserRequest

	| messageEvent userJson |
	self core when: #newMessageReceived send: #newMessageReceived: to: self.
	self core chats add: TCTMMocks mockPrivateChat.

	self receivedMessage: nil.
	messageEvent := TCTMMocks mockMessageEventFrom: TCTMMocks mockPrivateChat id.

	self core handleEvent: messageEvent.
	1 seconds wait.

	userJson := TCTMMocks mockUserJson1.
	self core client onRequestType: 'getUser' respond: userJson.

	self assert: self receivedMessage notNil.
	self assert: TCTMMocks mockUser1 fullName equals: self receivedMessage sender fullName.
	self assert: TCTMMocks mockPrivateChat id equals: self receivedMessage chat id.
	self assert: TCTMMocks mockMessageText equals: self receivedMessage message.