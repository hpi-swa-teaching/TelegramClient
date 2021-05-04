testing
testMessage

	| message |

	message := TCCMessage newFromMessageEvent: (TCCEvent newFromTDLibEvent: (Dictionary newFrom: {
		'@type' -> 'message'.
		'chat_id' -> '1'.
		'sender' -> (Dictionary newFrom: {'user_id' -> '2'}).
		'id' -> '3'.
		'is_outgoing' -> false.
		'content' -> (Dictionary newFrom: {
			'@type' -> 'messageText'.
			'text' -> (Dictionary newFrom: {
				'text' -> 'testText'})})})) in: self chat.
	
	self assert: message senderID equals: '2'.
	self assert: message id equals: '3'.