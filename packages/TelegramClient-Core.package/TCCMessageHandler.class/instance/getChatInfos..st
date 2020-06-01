as yet unclassified
getChatInfos: aChatId

	self client send: '{"@type": "getChat", "chat_id": "', aChatId, '"}'.