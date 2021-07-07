event handling
chatHistoryReceived: aChatHistory

	| chat chatID |
	(aChatHistory at: 'messages') ifNotEmpty: [
		chatID := (aChatHistory at: 'messages') first at: 'chat_id'.
		chat := self core chats getChat: chatID.
		(aChatHistory at: 'messages') do: [:message | chat addOldestMessage: (TCCMessage newFromMessageEvent: message in: chat with: self core)].

		chat waitingForUpdate: false.

		chat stillRequestedMessages > 0
			ifTrue: [self
				getChatHistoryFrom: chatID
				with: chat messages last id
				limit: chat stillRequestedMessages]].