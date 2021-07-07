message
mockChatHistoryIn: aChatId with: aMessageString

	^ TCCEvent newFromTDLibEvent: (Dictionary newFrom: {
			'@type' -> 'messages'.
			'messages' -> {
				self mockMessageJsonWith: aChatId and: self mockMessageID and: aMessageString
			}.
			'total_count' -> 1
		})