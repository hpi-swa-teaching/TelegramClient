testing
testChatIsPinned

	| chat |
	chat := (self core chatsHandler chats reject: [:aChat | aChat isPinned]) first.
	self core chatsHandler updateChatPosition: (TCTMMocks mockUpdateChatPositionEventForPinnedChatWithId: chat id).
	self wantsToTest: (TCUChatListItem newWithChat: chat width: TCUChatsList defaultWidth).
	self assertReading: 'pinned' in: self subject