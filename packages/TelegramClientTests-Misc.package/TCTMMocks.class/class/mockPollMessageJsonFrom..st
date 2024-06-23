message - json
mockPollMessageJsonFrom: aChatId
	"@linter-ignore"

	^ (JsonObject newFrom: {
			'@type' -> 'message'.
			'id' -> self mockMessageId.
			'chat_id' -> aChatId.
			'sender_id' -> (JsonObject newFrom: {
				'@type' -> 'messageSenderUser'.
				'user_id' -> self mockUser1 id
				}).
			'content' -> (JsonObject newFrom: {
				'@type' -> 'messagePoll'.
				'poll' -> (JsonObject newFrom: {
					'@type' -> 'poll'.
					'close_date' -> 0.
					'id' -> 1.
					'is_anonymous' -> false.
					'is_closed' -> false.
					'open_period' -> false.
					'question' -> 'Question'.
					'total_voter_count' -> 0.
					'type' -> (JsonObject newFrom: {
							'@type' -> 'pollTypeRegular'.
							'allow_multiple_answers' -> true.
						}).
					'options' -> self mockPollOptionsJson.
				}).
			}).
			'is_outgoing' -> false.
			'date' -> self mockMessageTimestamp
		})