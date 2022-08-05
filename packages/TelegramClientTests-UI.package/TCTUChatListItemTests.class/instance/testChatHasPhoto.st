testing
testChatHasPhoto

	self core client onRequestType: 'downloadFile' respond: TCTMMocks mockImageResponseJson.
	self wantsToTest: (TCUChatListItem newWithChat: self core chatsHandler chats first width: 500).
	0.1 seconds wait.
	self assert: (self subject findByClass: ImageMorph) morphs notEmpty.