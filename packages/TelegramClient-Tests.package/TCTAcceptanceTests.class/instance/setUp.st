running
setUp

	self core: TCTNoTDLibCore new.
	self core chats add: (TCCChat new id: TCTMocks mockChatID)
