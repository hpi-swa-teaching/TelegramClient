accessing
requestMessages: aNumber

	self core send: (TCCRequest newGetChatHistoryOf: self id from: self lastMessageId until: aNumber).
	self numberOfRequestedMessages: self numberOfMessages + aNumber.
