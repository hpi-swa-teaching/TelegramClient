event handling
chatHistoryReceived: aChatHistory

	| chatID |
	
	(aChatHistory at: 'messages') ifNotEmpty: [
		chatID := (aChatHistory at: 'messages') first at: 'chat_id'.
		(self chats getChat: chatID) chatHistoryReceived: aChatHistory].