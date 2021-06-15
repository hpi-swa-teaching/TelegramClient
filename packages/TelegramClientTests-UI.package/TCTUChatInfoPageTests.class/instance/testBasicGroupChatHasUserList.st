testing
testBasicGroupChatHasUserList

	self openAnyChatWith: #isBasicGroup.
	self partialTestChatList.