instance creation
newSendPhotoMessage: aPhotoPath to: aChatId

	^ TCCRequest
		newWithType: 'sendMessage'
		from: {
			'chat_id' -> aChatId.
			'input_message_content' -> (Dictionary newFrom: {
				'@type' -> 'inputMessagePhoto'.
				'photo' -> (Dictionary newFrom: {
					'@type' -> 'inputFileLocal'.
					'path' -> aPhotoPath.
				})
			})
		}