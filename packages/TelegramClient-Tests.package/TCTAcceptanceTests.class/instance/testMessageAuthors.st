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
	
	self assert: (notification sender fullName) equals: (self class mockUserFullName).
	self assert: chat_id equals: (notification chat id).
	self assert: (notification message message) equals: self class mockMessageText
