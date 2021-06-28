running
setUp

	super setUp.
	self wantsToTest: TCUChatMessageList new.
	self subject displayChat: self core chats first.
	self fillWithMessages.