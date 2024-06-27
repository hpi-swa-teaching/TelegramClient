instance creation
newSendPollMessage: aPollType to: aChatId asking: aString with: anOptionOrderedCollection isAnonymous: aBoolean

	^ (TCCRequest
		newWithType: 'sendMessage'
		from: {
			'chat_id' -> aChatId.
			'input_message_content' -> (Dictionary newFrom: {
				'@type' -> 'inputMessagePoll'.
				'question' -> aString.
				'options' -> anOptionOrderedCollection.
				'is_anonymous' -> false.
				'type' ->(self selectJsonFor: aPollType).
				}).
			})