instance creation
newSetPollAnswer: chatId message: messageId options: optionsArray

	^ TCCRequest
		newWithType: 'setPollAnswer'
		from: {
			'chat_id'-> chatId.
			'message_id'-> messageId.
			'option_ids'-> optionsArray.
		}