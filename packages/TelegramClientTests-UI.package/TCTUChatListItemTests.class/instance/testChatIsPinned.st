testing
testChatIsPinned

	| chat |
	chat := (self core chatsHandler chats reject: [:aChat | aChat isPinned]) first.
	self core chatsHandler updateChatPosition: (TCTMMocks mockUpdateChatPositionEventForPinnedChatWithId: chat id).
	self wantsToTest: (TCUChatListItem newWithChat: chat width: 500).
	self assertReading: 'pinned' in: (self subject).