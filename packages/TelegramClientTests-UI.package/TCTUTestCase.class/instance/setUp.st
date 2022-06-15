running
setUp

	self core: (TCTUMockCore newWithTeleClient: TCTMMockTdlibClient new).
	self core userStore: TCTMMocks mockUserStore.
	self core chatsHandler chats: (TCTMMocks mockChatsFor: self core).
	self core client onRequestType: 'downloadFile' respond: TCTMMocks mockImageResponseJson.
	TCUEmojiHelper ensureEmojisArePresent.
	self wantsToTest: (TCUMainWindow newWithCore: self core).
