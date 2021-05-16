testing
testMessage

	| message |

	message := TCCMessage newFromMessageEvent: (TCCEvent newFromTDLibEvent: (Dictionary newFrom: {
		'@type' -> 'message'.
		'chat_id' -> '1'.
		'sender_user_id' -> '2'.
		'id' -> '3'.
		'is_outgoing' -> false.
		'date' -> (DateAndTime fromUnixTime: 0) asSeconds.
		'content' -> (Dictionary newFrom: {
			'@type' -> 'messageText'.
			'text' -> (Dictionary newFrom: {
				'text' -> 'testText'})})})).
	
	self assert: message senderID equals: '2'.
	self assert: message id equals: '3'.
	self assert: message date asUTC asTime hhmm24 equals: '0000'.
	self assert: message message equals: 'testText'.