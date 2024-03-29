message - json
mockTextMessageJsonFrom: aChatId with: aSenderType replyingTo: aReplyMessageId with: aMessageId

	^ (JsonObject newFrom: {
			'@type' -> 'message'.
			'id' -> aMessageId.
			'chat_id' -> aChatId.
			'sender_id' -> (JsonObject newFrom: {
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
			'reply_to_message_id' -> aReplyMessageId.
			'date' -> self mockMessageTimestamp
		})