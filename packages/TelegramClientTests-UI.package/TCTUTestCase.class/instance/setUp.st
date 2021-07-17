running
setUp

	self core: (TCTUMockCore newWithTeleClient: TCTMMockTeleClient new).
	self core chats: TCTMMocks mockChats.
	self core users: TCTMMocks mockUserStore.
	TCUEmojiHelper ensureEmojisPresent.
	self wantsToTest: (TCUMain newWithCore: self core).
