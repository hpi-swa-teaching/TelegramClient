instance creation
newSendMessage: aString to: aChatId
"
	^ TCCRequest
		newWithType: 'sendMessage'
		from: {
			'chat_id' -> aChatId.
			'input_message_content' -> (Dictionary newFrom: {
				'@type' -> 'inputMessageText'.
				'text' -> (Dictionary newFrom: {
					'@type' -> 'formattedText'.
					'text' -> aString asString squeakToUtf8
				})
			})
		}"
		Transcript show: 'hier passiert ja doch was'.