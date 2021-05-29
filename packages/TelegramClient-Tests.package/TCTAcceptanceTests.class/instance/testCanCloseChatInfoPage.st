testing
testCanCloseChatInfoPage

	| titleBar |
	self wantsToTest: (TCUMain newWithCore: self core).
	
	(self subject findByClass: TCUChatListItem) click.
	titleBar := (self subject findByClass: TCUChatWindow) morphs collect: [:chatWindow | chatWindow titleBar].
	(self subject createWrapperFor: titleBar) click.
	self assert: (self subject findByClass: TCUChatInfoPage) visible.
	
	(self subject findByName: 'infoBackButton') click.
	self assert: (self subject findByClass: TCUChatInfoPage) visible not.