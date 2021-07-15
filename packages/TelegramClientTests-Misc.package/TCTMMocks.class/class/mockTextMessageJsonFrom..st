message - json
mockTextMessageJsonFrom: aChatId

	^ (JsonObject newFrom: {
			'@type' -> 'message'.
			'id' -> self mockMessageID.
			'chat_id' -> aChatId.
			'sender' -> (JsonObject newFrom: {
				'@type' -> 'messageSenderUser'.
				'user_id' -> self mockUser1 id
				}).
			'content' -> (JsonObject newFrom: {
				'@type' -> 'messageText'.
				'text' -> (JsonObject newFrom: {
					'text' -> self mockText
					})
				}).
				'is_outgoing' -> false.
				'date' -> self mockMessageTimestamp
			})