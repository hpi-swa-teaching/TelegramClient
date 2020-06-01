accessing
getChatInfos: aChatId

	self client send: '{"@type": "getChat", "chat_id": "', aChatId, '"}'.