testing
testMessageAuthors

	| message user chat_id notification |
	self receivedMessage: nil.
	chat_id := ((self core chats) first) id.
	message := TCTMocks mockMessageEventFrom: chat_id.

	self core handleEvent: message.
	user := TCTMocks mockUserWith: (TCTMocks mockMessageID asString, chat_id).
	self core handleEvent: user.
	
	notification := TCUNotification newWithMessage: self receivedMessage.
	
	self assert: (TCTMocks mockUserFullName = (notification sender fullName)).
	self assert: (chat_id = (notification chat id)).
	self assert: (TCTMocks mockMessageText = (notification message message))
