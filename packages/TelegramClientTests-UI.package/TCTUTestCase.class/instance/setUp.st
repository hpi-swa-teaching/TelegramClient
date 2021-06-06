running
setUp

	self core: TCTUMockCore new.
	self core chats: TCTMocks mockChats.
	self wantsToTest: (TCUMain newWithCore: self core).
