testing
testMessageTriggersUserRequest

	| message user |
	self core when: #newMessageReceived send: #newMessageReceived: to: self.
	self core chats add: TCTMocks mockPrivateChat.
	
	self receivedMessage: nil.
	message := TCTMocks mockMessageEventFrom: TCTMocks mockPrivateChat id.

	self core handleEvent: message.
	1 seconds wait.
	
	user := TCTMocks mockUserEvent.
	self core handleEvent: user.
	1 seconds wait.
	
	self assert: self receivedMessage notNil.
	self assert: (TCTMocks mockUser fullName) equals: (self receivedMessage sender fullName).
	self assert: (TCTMocks mockPrivateChat id) equals: (self receivedMessage chat id).
	self assert: (TCTMocks mockMessageText) equals: (self receivedMessage message)