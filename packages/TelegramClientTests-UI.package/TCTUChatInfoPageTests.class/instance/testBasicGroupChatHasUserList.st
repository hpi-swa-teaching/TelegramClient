testing
testBasicGroupChatHasUserList

	self openAnyChatSatisfying: [ :aChat | aChat isBasicGroup].
	self partialTestUserList.