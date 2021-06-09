accessing
mockMessageFrom: aChatId
	
	^ TCCEvent newFromTDLibEvent: (Dictionary newFrom: {
		'@type' -> 'updateNewMessage'.
		'message' -> (Dictionary newFrom: {
			'@type' -> 'message'.
			'id' -> 9447669760.
			'chat_id' -> aChatId.
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
		})