message
mockMessageJsonFrom: aChatId
	
	^ (Dictionary newFrom: {
			'@type' -> 'message'.
			'id' -> self mockMessageID.
			'chat_id' -> aChatId.
			'sender' -> (Dictionary newFrom: {
				'@type' -> 'messageSenderUser'.
				'user_id' -> self mockUserID
				}).
			'content' -> (Dictionary newFrom: {
				'@type' -> 'messageText'.
				'text' -> (Dictionary newFrom: {
					'text' -> self mockMessageText
					})
				}).
				'is_outgoing' -> false.
				'date' -> 1621267079
			})