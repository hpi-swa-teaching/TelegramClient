testing
testChatWithoutPhotoHasDefaultPhoto

	| chat |
	chat := (self core chatsHandler chats reject: [:aChat | aChat hasPhoto]) first.
	self wantsToTest: (TCUChatListItem newWithChat: chat width: TCUChatsList defaultWidth).
	self assert: (self subject findByClass: ImageMorph) morphs notEmpty.