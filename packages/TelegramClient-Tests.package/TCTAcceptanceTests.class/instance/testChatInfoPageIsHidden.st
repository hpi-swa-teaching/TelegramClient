testing
testChatInfoPageIsHidden

	self wantsToTest: (TCUMain newWithCore: self core).
	self slowTestBy: 1000.
	
	(self subject findByClass: TCUChatListItem) click.
	self assert: (self subject findByClass: TCUChatInfoPage) visible not.