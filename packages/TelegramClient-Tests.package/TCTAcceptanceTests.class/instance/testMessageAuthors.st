testing
testMessageAuthors

	| message user notification overrideCore |
	"Fake core because some other tests need a working one"
	overrideCore := TCTNoTDLibCore new.
	overrideCore chats add: (TCCChat new id: TCTMocks mockChatID).
	overrideCore when: #newMessageReceived send: #newMessageReceived: to: self.
	
	self receivedMessage: nil.
	message := TCTMocks mockMessageEventFrom: TCTMocks mockChatID.

	overrideCore handleEvent: message.
	2 seconds wait.
	user := TCTMocks mockUserEvent.
	overrideCore handleEvent: user.
	1 second wait.
	notification := TCUNotification newWithMessage: self receivedMessage.
	
	self assert: (TCTMocks mockUserFullName) equals: (notification sender fullName).
	self assert: (TCTMocks mockChatID) equals: (notification chat id).
	self assert: (TCTMocks mockMessageText) equals: (notification message message)
