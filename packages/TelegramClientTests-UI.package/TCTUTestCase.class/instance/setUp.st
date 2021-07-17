running
setUp

	self core: (TCTUMockCore newWithTeleClient: TCTMMockTeleClient new).
	self core chats: TCTMMocks mockChats.
	self core userStore: TCTMMocks mockUserStore.
	TCUEmojiHelper ensureEmojisArePresent.
	self wantsToTest: (TCUMain newWithCore: self core).
