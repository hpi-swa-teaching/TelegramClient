instance creation
newSendMessage: aString to: aChatId asReplyTo: aMessageId

	^ TCCRequest
		newWithType: 'sendMessage'
		from: {
			'chat_id' -> aChatId.
			'reply_to_message_id' -> aMessageId.
			'input_message_content' -> (Dictionary newFrom: {
				'@type' -> 'inputMessageText'.
				'text' -> (Dictionary newFrom: {
					'@type' -> 'formattedText'.
					'text' -> aString asString squeakToUtf8
				})
			})
		}