message - json
mockTextMessageJsonWith: aChatId and: aMessageId and: aMessageString

	^ (JsonObject newFrom: {
			'@type' -> 'message'.
			'id' -> aMessageId.
			'chat_id' -> aChatId.
			'sender' -> (JsonObject newFrom: {
				'@type' -> 'messageSenderUser'.
				'user_id' -> self mockUser1 id
				}).
			'content' -> (JsonObject newFrom: {
				'@type' -> 'messageText'.
				'text' -> (JsonObject newFrom: {
					'text' -> aMessageString
					})
				}).
				'is_outgoing' -> false.
				'date' -> self mockMessageTimestamp
			})