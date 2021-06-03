testing
xtestMessageAuthors

	| message user notification |
	self core when: #newMessageReceived send: #newMessageReceived: to: self.
	
	self receivedMessage: nil.
	message := TCTMocks mockMessageEventFrom: TCTMocks mockChatID.

	self core handleEvent: message.
	2 seconds wait.
	user := TCTMocks mockUserEvent.
	self core handleEvent: user.
	1 second wait.
	notification := TCUNotification newWithMessage: self receivedMessage.
	
	self assert: (TCTMocks mockUserFullName) equals: (notification sender fullName).
	self assert: (TCTMocks mockChatID) equals: (notification chat id).
	self assert: (TCTMocks mockMessageText) equals: (notification message message)
