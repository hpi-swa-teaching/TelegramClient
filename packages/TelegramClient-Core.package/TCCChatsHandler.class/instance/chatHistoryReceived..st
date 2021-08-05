event handling
chatHistoryReceived: anEvent

	| chatId |
	
	(anEvent at: 'messages') ifNotEmpty: [
		chatId := (anEvent at: 'messages') first at: 'chat_id'.
		(self chats getChat: chatId) chatHistoryReceived: anEvent].
