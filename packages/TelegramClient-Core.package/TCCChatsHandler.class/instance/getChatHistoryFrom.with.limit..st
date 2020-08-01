accessing
getChatHistoryFrom: aChatID with: aMessageId limit: aLimit

	(self app chats getChat: aChatID) ifWaitingForUpdate: [
		self client send: (TCCRequest
			newWithType: 'getChatHistory'
			from: {'chat_id' -> aChatID.
					'from_message_id' -> aMessageId.
					'offset' -> 0.
					'limit' -> aLimit.
					'only_local' -> false}).

		self remainingMessages: aLimit].