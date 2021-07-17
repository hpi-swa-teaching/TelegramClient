testing
testUserListNotVisibleInChannelChatInfoPage

	self openAnyChatThatSatisfies: [ :aChat | aChat isChannel].
	self openInfoPageInChatWindow.
	self assertNotSeeing: TCUUserList in: self subject.