running
setUp

	self core: (TCTUMockCore newWithTeleClient: TCTMMockTeleClient new).
	self core chats: TCTMMocks mockChats.
	self core users: TCTMMocks mockUserStore.
	self wantsToTest: (TCUMain newWithCore: self core).
