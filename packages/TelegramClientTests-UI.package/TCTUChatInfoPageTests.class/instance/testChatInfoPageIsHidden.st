testing
testChatInfoPageIsHidden
	
	(self subject findByClass: TCUChatListItem) click.
	self assert: (self subject findByClass: TCUChatInfoPage) visible not.