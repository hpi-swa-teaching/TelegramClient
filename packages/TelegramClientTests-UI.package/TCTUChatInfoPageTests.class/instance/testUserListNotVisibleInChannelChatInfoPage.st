testing
testUserListNotVisibleInChannelChatInfoPage

	self openAnyChatSatisfying: [ :aChat | aChat isChannel].
	self openInfoPageInChatWindow.
	self assertNotSeeing: TCUUserList in: self subject.