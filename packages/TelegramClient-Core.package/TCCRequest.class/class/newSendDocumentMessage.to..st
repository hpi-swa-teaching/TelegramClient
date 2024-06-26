instance creation
newSendDocumentMessage: aDocumentPath to: aChatId
	Transcript show: aDocumentPath.
	self halt.

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