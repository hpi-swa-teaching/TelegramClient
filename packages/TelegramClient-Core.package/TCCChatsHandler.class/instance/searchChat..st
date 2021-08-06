library calls
searchChat: aString

	self core send: (TCCRequest newSearchChatFrom: aString).