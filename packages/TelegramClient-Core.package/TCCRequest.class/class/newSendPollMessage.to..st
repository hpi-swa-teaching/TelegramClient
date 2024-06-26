instance creation
newSendPollMessage: aPoll to: aChatId

	^ TCCRequest
		newWithType: 'sendMessage'
		from: {
			'chat_id' -> aChatId.
			'input_message_content' -> (Dictionary newFrom: {
				'@type' -> 'inputMessagePoll'.
				'question' -> (Dictionary newFrom: {
					'@type' -> 'formattedText'.
					'text' -> 'hallo'	
				}).
				'options' -> (OrderedCollection newFrom: {(Dictionary newFrom: {
					'@type' -> 'formattedText'.
					'text' -> 'Option 1'  
				}).
				(Dictionary newFrom: {
					'@type' -> 'formattedText'.
					'text' -> 'Option 2'
				}).
				(Dictionary newFrom: {
					'@type' -> 'formattedText'.
					'text' -> 'Option 3'
				})}).
				'is_anonymous' -> 'false'.
				'type' -> (Dictionary newFrom: {
					'@type' -> 'pollTypeRegular'.
					'allow_multiple_answers' -> 'false'
				})
			})
		}