testing
testMessageAuthors

	| message user chat_id notification |
	self receivedMessage: nil.
	chat_id := ((self core chats) first) id.
	message := self mockMessageFrom: chat_id.

	self core handleEvent: message.
	user := self mockUserWith: 1673511834 and: ('9447669760' , chat_id).
	self core handleEvent: user.
	
	notification := TCUNotification newWithMessage: self receivedMessage.
	
	self assert: ('Test User' = (notification sender fullName)).
	self assert: (chat_id = (notification chat id)).
	self assert: ('Hallo' = (notification message message))
