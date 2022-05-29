instance creation
newGetMessage: aMessageId from: aChatId
 
	^ TCCRequest
			newWithType: 'getMessage'
			from: {'chat_id' -> aChatId.
					'message_id' -> aMessageId}