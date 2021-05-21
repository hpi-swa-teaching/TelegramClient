testing
testMessageAuthors

	| message user notification |
	self receivedMessage: nil.
	message := self class mockMessageFrom: self class mockChatID.

	self core handleEvent: message.
	2 seconds wait.
	user := self class mockUserWith: self class mockUserID.
	self core handleEvent: user.
	1 second wait.
	notification := TCUNotification newWithMessage: self receivedMessage.
	
	self assert: (self class mockUserFullName = (notification sender fullName)).
	self assert: (self class mockChatID = (notification chat id)).
	self assert: (self class mockMessageText = (notification message message))
