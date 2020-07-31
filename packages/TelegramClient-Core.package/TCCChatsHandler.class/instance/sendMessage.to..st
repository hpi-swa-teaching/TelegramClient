accessing
sendMessage: aString to: aChatID

	|encoded|
	encoded := aString asString squeakToUtf8.
	self client send: (TCCRequest
		newWithType: 'sendMessage'
		from: {'chat_id' -> aChatID.
			'input_message_content' -> (Dictionary newFrom: {
				'@type' -> 'inputMessageText'.
				'text' -> (Dictionary newFrom: {
					'@type' -> 'formattedText'.
					'text' -> encoded})})}).