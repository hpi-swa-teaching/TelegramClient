running
setUp

	self core: (TCTUMockCore newWithTeleClient: TCTMMockTeleClient new).
	self core userStore: TCTMMocks mockUserStore.
	self core chats: (TCTMMocks mockChatsFor: self core).
	TCUEmojiHelper ensureEmojisArePresent.
	self wantsToTest: (TCUMainWindow newWithCore: self core).
