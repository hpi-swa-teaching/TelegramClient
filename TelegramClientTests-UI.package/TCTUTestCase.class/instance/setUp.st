running
setUp

	self core: TCTUMockCore new.
	self core chats: TCTUMocks mockChats.
	self wantsToTest: (TCUMain newWithCore: self core).
