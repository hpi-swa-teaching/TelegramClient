testing
testMessageAuthors

	| message user notification |
	self receivedMessage: nil.
	message := TCTMocks mockMessageEventFrom: TCTMocks mockChatID.

	self core handleEvent: message.
	2 seconds wait.
	user := TCTMocks mockUserWith: TCTMocks mockUserID asString.
	self core handleEvent: user.
	1 second wait.
	notification := TCUNotification newWithMessage: self receivedMessage.
	
	self assert: (TCTMocks mockUserFullName = (notification sender fullName)).
	self assert: (TCTMocks mockChatID = (notification chat id)).
	self assert: (TCTMocks mockMessageText = (notification message message))
