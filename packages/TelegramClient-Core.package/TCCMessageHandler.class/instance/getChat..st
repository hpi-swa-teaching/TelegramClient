as yet unclassified
getChat: aChatId

	self client send: '{"@type": "getChat", "chat_id": "', aChatId, '"}'.