controlling
handleMessageRequest: aMessageRequest

	((self messageIds occurrencesOf: (aMessageRequest messageId)) ~= 0) ifTrue:
			[aMessageRequest completeRequest.]
		ifFalse:
			[self requestedMessages add: aMessageRequest.
			self loadChatHistory.]