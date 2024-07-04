instance creation
newSendDocumentMessage: aDocumentPath to: aChatId

	^ TCCRequest
		newWithType: 'sendMessage'
		from: {
			'chat_id' -> aChatId.
			'input_message_content' -> (Dictionary newFrom: {
				'@type' -> 'inputMessageDocument'.
				'document' -> (Dictionary newFrom: {
					'@type' -> 'inputFileLocal'.
					'path' -> aDocumentPath.
				})
			})
		}