sending
updateMessageList

	self changed: #messageList.
	(self dependents at: 7) scrollToBottom
	