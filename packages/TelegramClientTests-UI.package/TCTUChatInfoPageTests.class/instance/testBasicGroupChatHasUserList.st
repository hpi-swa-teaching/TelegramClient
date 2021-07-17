testing
testBasicGroupChatHasUserList

	self openAnyChatThatSatisfies: [ :aChat | aChat isBasicGroup].
	self partialTestUserList.