instance creation
newSendMessage: aString to: aNumber

	^ TCCRequest
		newWithType: 'sendMessage'
		from: {
			'chat_id' -> aNumber.
			'input_message_content' -> (Dictionary newFrom: {
				'@type' -> 'inputMessageText'.
				'text' -> (Dictionary newFrom: {
					'@type' -> 'formattedText'.
					'text' -> aString asString squeakToUtf8
				})
			})
		}