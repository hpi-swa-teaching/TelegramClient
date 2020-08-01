accessing
getChatHistoryFrom: aChatID with: aMessageId and: aLimit

	self client send: (TCCRequest
		newWithType: 'getChatHistory'
		from: {
			'chat_id' -> aChatID.
			'from_message_id' -> aMessageId.
			'offset' -> 0.
			'limit' -> aLimit.
			'only_local' -> false}).