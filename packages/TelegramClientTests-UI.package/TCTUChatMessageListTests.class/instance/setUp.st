running
setUp

	super setUp.
	self wantsToTest: TCUChatMessageList new.
	self subject displayChat: self core chatsHandler chats first.
	self fillWithMessages.