controlling
handleMessageRequest: aMessageRequest

	(self hasMessage: (aMessageRequest messageId)) ifTrue:
			[aMessageRequest completeRequest.]
		ifFalse:
			[self requestedMessages add: aMessageRequest.
			self loadChatHistory.].