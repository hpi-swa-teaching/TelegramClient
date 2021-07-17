testing
testUserListNotVisibleInChannelChatInfoPage

	self openAnyChatWith: #isChannel.
	self openInfoPageInChatWindow.
	self assertNotSeeing: TCUUserList in: self subject.