loading
loadChatHistory

	self ifNotWaitingForUpdate: [
		self requestMessages: self class defaultMessageLimit.
	].