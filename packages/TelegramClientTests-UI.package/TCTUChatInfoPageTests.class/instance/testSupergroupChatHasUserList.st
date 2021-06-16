testing
testSupergroupChatHasUserList

	self openAnyChatWith: #isSuperGroup.
	self partialTestChatList.