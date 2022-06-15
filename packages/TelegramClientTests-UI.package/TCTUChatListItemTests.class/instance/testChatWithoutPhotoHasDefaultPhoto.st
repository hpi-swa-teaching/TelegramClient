testing
testChatWithoutPhotoHasDefaultPhoto

	| chat |
	chat := (self core chatsHandler chats reject: [:aChat | aChat hasPhoto]) first.
	self wantsToTest: (TCUChatListItem newWithChat: chat width: 500).
	self assert: true equals: ((self subject morphs first) submorphs anySatisfy: [:aMorph | aMorph isImageMorph])