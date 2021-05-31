testing
testCanCloseChatInfoPage

	| titleBar |
	
	(self subject findByClass: TCUChatListItem) click.
	titleBar := (self subject findByClass: TCUChatWindow) titleBar.
	(self subject createWrapperFor: { titleBar }) click.
	self assert: (self subject findByClass: TCUChatInfoPage) visible.
	
	(self subject findByName: 'infoBackButton') click.
	self assert: (self subject findByClass: TCUChatInfoPage) visible not.