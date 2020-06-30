events
chatHistoryReceived: aChatHistory

	| newMessagesCount chat messageObject chatId chatMessageNumber oldestMessageId |
	
	newMessagesCount := (aChatHistory at: 'messages') size. 
	chatId := (((aChatHistory at: 'messages') at: 1) at: 'chat_id').
	chat := self app chats getChat: chatId.
	
	1 to: newMessagesCount do: [:x |
		((((aChatHistory at: 'messages') at: x) at: 'content') at: '@type') = 'messageText' ifTrue: [
			messageObject := TCCMessage new
				message: (((((aChatHistory at: 'messages') at: x) at: 'content') at: 'text') at: 'text');
				chatID: chatId;
				senderId: (((aChatHistory at: 'messages') at: x) at: 'sender_user_id');
				messageId: (((aChatHistory at: 'messages') at: x) at: 'id').
			chat messages add: messageObject.].].
	
	oldestMessageId := chat messages last messageId.
	chatMessageNumber := messageLimit - chat messages size.
	chatMessageNumber > 0 ifTrue: [
		self getChatHistoryFrom: chatId with: oldestMessageId and: chatMessageNumber.].