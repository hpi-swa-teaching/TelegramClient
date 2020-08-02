events
chatHistoryReceived: aChatHistory

	| chat chatID |

	(aChatHistory at: 'messages') ifNotEmpty: [
		chatID := (aChatHistory at: 'messages') first at: 'chat_id'.
		chat := self app chats getChat: chatID.

		(aChatHistory at: 'messages') do: [:message | chat addMessage: (TCCMessage newFromMessageEvent: message)].

		chat waitingForUpdate: false.
		
		chat stillRequestedMessages > 0 
			ifTrue: [self 
				getChatHistoryFrom: chatID
				with: chat messages last id
				limit: chat stillRequestedMessages]].