running
setUp

	self core: TCTUMockCore new.
	self core chats: TCTMMocks mockChats.
	self wantsToTest: (TCUMain newWithCore: self core).
