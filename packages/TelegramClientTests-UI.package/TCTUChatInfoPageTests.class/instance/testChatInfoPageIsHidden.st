testing
testChatInfoPageIsHidden
	self openAnyChat.
	self assert: (self subject findByClass: TCUChatInfoPage) visible not.