running
setUp

	self core: (TCTUMockCore newWithTeleClient: TCTMMockTeleClient new).
	self core chats: (TCTMMocks mockChatsFor: self core).
	self core users: TCTMMocks mockUserStore.
	TCUEmojiHelper ensureEmojisArePresent.
	self wantsToTest: (TCUMainWindow newWithCore: self core).
