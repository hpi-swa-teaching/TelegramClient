library calls
getChatHistoryFrom: aChatID with: aMessageId limit: aLimit

	| chat |
	
	chat := self core chats getChat: aChatID.
	chat ifNotWaitingForUpdate: [
		self client send: (TCCRequest
			newWithType: 'getChatHistory'
			from: {'chat_id' -> aChatID.
					'from_message_id' -> aMessageId.
					'offset' -> 0.
					'limit' -> aLimit.
					'only_local' -> false}).

		chat requestMessages: aLimit].