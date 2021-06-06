testing
testMessageTriggersNewMessageReceived

	| message user |
	self core when: #newMessageReceived send: #newMessageReceived: to: self.
	
	self receivedMessage: nil.
	message := TCTMocks mockMessageEventFrom: TCTMocks mockChatID.

	self core handleEvent: message.
	2 seconds wait.
	user := TCTMocks mockUserEvent.
	self core handleEvent: user.
	1 second wait.
	
	" todo test self receivedMessage".
	self halt.