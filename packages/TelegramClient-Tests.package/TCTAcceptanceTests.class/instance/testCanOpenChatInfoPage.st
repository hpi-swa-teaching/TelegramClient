testing
testCanOpenChatInfoPage

	self wantsToTest: (TCUMain newWithCore: self core).
	(self subject findByClass: TCUChatListItem) click.
	(self subject findByClass: TCUChatWindow) morphs first titleBar click.
	self assert: (self subject findByClass: TCUChatInfoPage) morphs first visible.
	