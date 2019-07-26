instance creation
chatId: chatId messageId: messageId
	^(self basicNew) chat_id: chatId; from_message_id: messageId;
	offset: 0;
	limit: 100;
	only_local: false