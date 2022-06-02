message - json
mockNotSupportedMessageJsonFrom: aChatId

	^ (JsonObject newFrom: {
			'@type' -> 'message'.
			'id' -> self mockMessageId.
			'chat_id' -> aChatId.
			'sender_id' -> (JsonObject newFrom: {
				'@type' -> 'messageSenderUser'.
				'user_id' -> self mockUser1 id
			}).
			'content' -> (JsonObject newFrom: {
				'@type' -> 'messageOfSomeTypeThatDoesNotExistInTelegram'.
			}).
			'is_outgoing' -> false.
			'date' -> self mockMessageTimestamp
		})