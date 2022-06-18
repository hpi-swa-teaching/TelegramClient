testing
testChatIsNotPinned

	| chat |
	chat := (self core chatsHandler chats reject: [:aChat | aChat isPinned]) first.
	self core chatsHandler updateChatPosition: (TCTMMocks mockUpdateChatPositionEventForNotPinnedChatWithId: chat id).
	self wantsToTest: (TCUChatListItem newWithChat: chat width: 500).
	self assertNotReading: 'pinned' in: (self subject).