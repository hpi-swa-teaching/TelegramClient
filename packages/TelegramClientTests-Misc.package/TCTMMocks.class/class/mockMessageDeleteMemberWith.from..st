message - json
mockMessageDeleteMemberWith: aUserId from: aChatId

	^ (JsonObject newFrom: {
			'@type' -> 'message'.
			'id' -> self mockMessageId.
			'chat_id' -> aChatId.
			'sender_id' -> (JsonObject newFrom: {
				'@type' -> #messageSenderChat.
				'user_id' -> self mockUser1 id
				}).
			'content' -> (JsonObject newFrom: {
				'@type'->'messageChatDeleteMember'.
				'user_id'-> aUserId
			}).
			'is_outgoing' -> false.
			'reply_to_message_id' -> 0.
			'date' -> self mockMessageTimestamp
		})