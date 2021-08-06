message - json
mockTextMessageJsonFrom: aChatId with: aSenderType

	^ (JsonObject newFrom: {
			'@type' -> 'message'.
			'id' -> self mockMessageId.
			'chat_id' -> aChatId.
			'sender' -> (JsonObject newFrom: {
				'@type' -> aSenderType asString.
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