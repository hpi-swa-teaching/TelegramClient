loading
chatHistoryReceived: anEvent

	(anEvent at: 'messages') do:
		[:message | self addOldestMessage: (TCCMessage newFromMessageEvent: message in: self with: self core).
			self fulfillMessageRequest: (message at: 'id').
			].

	(self requestedMessages isEmpty) ifFalse: [self increaseNumberOfRequestedMessages.].

	self waitingForUpdate: false.

	self stillRequestedMessages > 0
		ifTrue: [self loadChatHistory.].