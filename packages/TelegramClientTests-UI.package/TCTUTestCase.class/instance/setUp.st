running
setUp

	self core: (TCTUMockCore newWithTeleClient: TCTMMockTdlibClient new).
	self core userStore: TCTMMocks mockUserStore.
	self core chatsHandler chats: (TCTMMocks mockChatsFor: self core).
	TCUEmojiHelper ensureEmojisArePresent.
	self wantsToTest: (TCUMainWindow newWithCore: self core).
