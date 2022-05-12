drawing
addChatsList

	self chatsList: (TCUChatsList new
		height: (self height - self header height);
		position: (self position + (0 @ self header height));
		chats: self core chatsHandler chats;
		yourself).

	self
		addMorphBack: self chatsList.