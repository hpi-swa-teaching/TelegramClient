testing
testChatHasPhoto

	self core client onRequestType: 'downloadFile' respond: TCTMMocks mockImageResponseJson.
	
	self wantsToTest: (TCUChatListItem newWithChat: (self core chatsHandler chats first) width: 500).
	0.5 seconds wait.
	self assert: true equals: ((self subject morphs first) submorphs anySatisfy: [:aMorph | aMorph isImageMorph])