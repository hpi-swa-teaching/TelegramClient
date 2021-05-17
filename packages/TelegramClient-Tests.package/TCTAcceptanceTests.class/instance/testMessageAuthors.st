as yet unclassified
testMessageAuthors

	| message user chat_id notification |
	self receivedMessage: nil.
	chat_id := ((self core chats) at: 1) id.
	message := TCCEvent newFromTDLibEvent: (Dictionary newFrom: {
		'@type' -> 'updateNewMessage'.
		'message' -> (Dictionary newFrom: {
			'@type' -> 'message'.
			'id' -> 9447669760.
			'chat_id' -> chat_id.
			'sender' -> (Dictionary newFrom: {
				'@type' -> 'messageSenderUser'.
				'user_id' -> 1673511834
				}).
			'content' -> (Dictionary newFrom: {
				'@type' -> 'messageText'.
				'text' -> (Dictionary newFrom: {
					'text' -> 'Hallo'
					})
				}).
				'is_outgoing' -> false.
				'date' -> 1621267079
			})
		}).
	self core handleEvent: message.
	user := TCCEvent newFromTDLibEvent: (Dictionary newFrom: {
		'@type' -> 'user'.
		'id' -> 1673511834.
		'first_name' -> 'Test'.
		'last_name' -> 'User'.
		'username' -> 'testuser'.
		'@extra' -> ('9447669760' , chat_id)
	}).
	self core handleEvent: user.
	
	notification := TCUNotification newWithMessage: self receivedMessage.
	
	self assert: ('Test User' = (notification sender fullName)).
	self assert: (chat_id = (notification chat id)).
	self assert: ('Hallo' = (notification message message))
