library calls
searchChat: aUsername

	self core send: (TCCRequest newSearchChatFrom: aUsername).