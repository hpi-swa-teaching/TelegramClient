event handling
chatHistoryReceived: anEvent

	| chatID |
	
	(anEvent at: 'messages') ifNotEmpty: [
		chatID := (anEvent at: 'messages') first at: 'chat_id'.
		(self core chats getChat: chatID) chatHistoryReceived: anEvent].