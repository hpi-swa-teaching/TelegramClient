testing
testUserListNotVisibleInChannelChatInfoPage

	self openAnyChatSatisfying: [ :aChat | aChat isChannel].
	self openInfoPageInChatWindow.
	self assert: (self subject findByClass: TCUUserList) morphs isEmpty.