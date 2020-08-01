events
chatHistoryReceived: aChatHistory

	| chat oldestMessageId chatID |

	(aChatHistory at: 'messages') ifNotEmpty: [
		chatID := (aChatHistory at: 'messages') first at: 'chat_id'.
		chat := self app chats getChat: chatID.

		(aChatHistory at: 'messages') do: [:message | chat addMessage: (TCCMessage newFromMessageEvent: message)].

		chat waitingForUpdate: false.
		self remainingMessages: self remainingMessages - (aChatHistory at: 'messages') size.
		chat messages ifNotEmpty: [
			oldestMessageId := chat messages last messageId.
			self remainingMessages > 0 
				ifTrue: [self getChatHistoryFrom: chatID with: oldestMessageId limit: self remainingMessages]]].