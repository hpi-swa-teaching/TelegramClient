testing
testMessageTriggersUserRequest

	| message user |
	self core when: #newMessageReceived send: #newMessageReceived: to: self.
	self core chats add: TCTMMocks mockPrivateChat.
	
	self receivedMessage: nil.
	message := TCTMMocks mockMessageEventFrom: TCTMMocks mockPrivateChat id.

	self core handleEvent: message.
	1 seconds wait.
	
	user := TCTMMocks mockUserEvent.
	self core handleEvent: user.
	1 seconds wait.
	
	self assert: self receivedMessage notNil.
	self assert: (TCTMMocks mockUser fullName) equals: (self receivedMessage sender fullName).
	self assert: (TCTMMocks mockPrivateChat id) equals: (self receivedMessage chat id).
	self assert: (TCTMMocks mockMessageText) equals: (self receivedMessage message)