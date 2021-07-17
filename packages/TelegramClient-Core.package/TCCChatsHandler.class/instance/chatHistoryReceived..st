event handling
chatHistoryReceived: aChatHistory

	| chat chatID |

	(aChatHistory at: 'messages') ifNotEmpty: [
		chatID := (aChatHistory at: 'messages') first at: 'chat_id'.
		chat := self core chats getChat: chatID.
		chat chatHistoryReceived: aChatHistory].