message
mockChatHistoryIn: aChatId

	^ TCCEvent newFromTDLibEvent: (Dictionary newFrom: {
			'@type' -> 'messages'.
			'messages' -> {
				self mockMessageJsonWith: aChatId.
			}.
			'total_count' -> 1
		})