instance creation
newGetChatHistoryOf: aChatId from: aMessageId until: aLimit

	^ TCCRequest
			newWithType: 'getChatHistory'
			from: {'chat_id' -> aChatId.
					'from_message_id' -> aMessageId.
					'offset' -> 0.
					'limit' -> aLimit.
					'only_local' -> false}