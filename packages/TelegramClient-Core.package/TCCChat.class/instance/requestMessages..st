accessing
requestMessages: aLimit

	self core send: (TCCRequest newGetChatHistoryOf: self id from: self messages last id until: aLimit).
	self numberOfRequestedMessages: self numberOfMessages + aLimit.