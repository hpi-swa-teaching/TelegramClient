testing
testMessage

	| message |
	message := TCCMessage newFromMessageEvent: (TCCEvent newFromTDLibEvent: (Dictionary newFrom: {
		'@type' -> 'message'.
		'chat_id' -> '1'.
		'sender' -> (Dictionary newFrom: {'user_id' -> '2'}).
		'id' -> '3'.
		'is_outgoing' -> false.
		'date' -> (DateAndTime fromUnixTime: 0) asSeconds.
		'content' -> (Dictionary newFrom: {
			'@type' -> 'messageText'.
			'text' -> (Dictionary newFrom: {
				'text' -> 'testText'})})})) in: self chat.
	self assert: '2' equals: message senderID.
	self assert: '3' equals: message id.
	self assert: '0000' equals: message date asUTC asTime hhmm24.
	self assert: 'testText' equals: message message.
	self assert: message chatID equals: (self chat id)