loading
requestMessages: aLimit

	self core send: (TCCRequest newGetChatHistoryOf: self id from: self lastMessageId until: aLimit).
	self numberOfRequestedMessages: self numberOfMessages + aLimit.