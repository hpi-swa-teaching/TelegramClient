testing
testMessageAuthors

	| message user chat_id notification |
	self receivedMessage: nil.
	chat_id := ((self core chats) first) id.
	message := self class mockMessageFrom: chat_id.

	self core handleEvent: message.
	user := self class mockUserWith: (self class mockMessageID asString, chat_id).
	self core handleEvent: user.
	
	notification := TCUNotification newWithMessage: self receivedMessage.
	
	self assert: (self class mockUserFullName = (notification sender fullName)).
	self assert: (chat_id = (notification chat id)).
	self assert: (self class mockMessageText = (notification message message))
