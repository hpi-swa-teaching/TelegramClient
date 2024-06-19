instance creation
newSendVideoMessage: aVideoPath to: aChatId

	^ TCCRequest
		newWithType: 'sendMessage'
		from: {
			'chat_id' -> aChatId.
			'input_message_content' -> (Dictionary newFrom: {
				'@type' -> 'inputMessageVideo'.
				'video' -> (Dictionary newFrom: {
					'@type' -> 'inputFileLocal'.
					'path' -> aVideoPath.
				})
			})
		}