message
mockMessageEventWith: aChatId and: aMessageId

	^ TCCEvent newFromTDLibEvent: (Dictionary newFrom: {
			'@type' -> 'updateNewMessage'.
			'message' -> (self mockTextMessageJsonWith: aChatId and: aMessageId).
		})