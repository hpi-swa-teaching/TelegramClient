testing
testMessage

	| message |

	message := TCCMessage newFromMessageEvent: (TCCEvent newFromTDLibEvent: (Dictionary newFrom: {
		'@type' -> 'message'.
		'chat_id' -> '1'.
		'sender_user_id' -> '2'.
		'id' -> '3'.
		'content' -> (Dictionary newFrom: {
			'@type' -> 'messageText'.
			'text' -> (Dictionary newFrom: {
				'text' -> 'testText'})})})).
	
	self assert: message senderID equals: '2'.
	self assert: message id equals: '3'.