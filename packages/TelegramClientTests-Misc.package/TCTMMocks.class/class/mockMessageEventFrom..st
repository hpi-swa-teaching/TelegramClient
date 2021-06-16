message
mockMessageEventFrom: aChatId

	^ TCCEvent newFromTDLibEvent: (Dictionary newFrom: {
		'@type' -> 'updateNewMessage'.
		'message' -> (self mockMessageJsonFrom: aChatId).
		})