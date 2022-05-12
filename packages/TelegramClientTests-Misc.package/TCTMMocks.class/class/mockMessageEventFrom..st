message
mockMessageEventFrom: aChatId

	^ TCCEvent newFromTdlibEvent: (Dictionary newFrom: {
		'@type' -> 'updateNewMessage'.
		'message' -> (self mockMessageJsonFrom: aChatId).
		})