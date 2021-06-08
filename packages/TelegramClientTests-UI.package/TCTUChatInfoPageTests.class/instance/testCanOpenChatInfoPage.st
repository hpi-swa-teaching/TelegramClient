testing
testCanOpenChatInfoPage
	
	self openAnyChat.
	self openInfoPageInChatWindow.
	
	self assert: (self subject findByClass: TCUChatInfoPage) visible.