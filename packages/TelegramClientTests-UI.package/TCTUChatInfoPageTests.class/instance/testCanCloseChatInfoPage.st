testing
testCanCloseChatInfoPage

	self openAnyChat.
	self openInfoPageInChatWindow.
	self assert: (self subject findByClass: TCUChatInfoPage) visible.

	(self subject findByName: 'infoBackButton') click.
	self assert: (self subject findByClass: TCUChatInfoPage) visible not.