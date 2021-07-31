message - json
mockUpdateNewMessageJsonEventFrom: aChatId

	^ JsonObject newFrom: {
		'@type' -> 'updateNewMessage'.
		'message' -> (TCTMMocks mockMessageJsonFrom: aChatId).
	}