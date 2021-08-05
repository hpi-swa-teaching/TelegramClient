accessing
requestMessages: aNumber

	self core send: (TCCRequest newGetChatHistoryOf: self id from: self messages last id until: aNumber).
	self numberOfRequestedMessages: self numberOfMessages + aNumber.
