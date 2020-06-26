accessing
getChatHistoryFrom: aChatID

	self client send: (TCCRequest
		newWithType: 'getChatHistory'
		from: {'chat_id' -> aChatID.
				'from_message_id' -> 0.
				'offset' -> 0.
				'limit' -> 3.
				'only_local' -> false.}).
