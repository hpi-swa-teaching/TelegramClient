accessing
getChatInfos: aChatID

	self client send: (TCCRequest
		newWithType: 'getChat'
		from: {'chat_id' -> aChatID}).