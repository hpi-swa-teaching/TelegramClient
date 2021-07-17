testing
testSupergroupChatHasUserList

	self openAnyChatThatSatisfies: [ :aChat | aChat isSuperGroup and: [aChat isChannel not]].
	self partialTestUserList.