testing
testSupergroupChatHasUserList

	self openAnyChatSatisfying: [ :aChat | aChat isSuperGroup and: [aChat isChannel not]].
	self partialTestUserList.