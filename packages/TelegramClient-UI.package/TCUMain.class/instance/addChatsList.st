initialization
addChatsList

	| chatsList |	
	chatsList := TCUChatsList new 
		height: (self height - self defaultHeaderHeight);
		position: (self position + (0 @ self defaultHeaderHeight)).
		
	chatsList 
		when: #chatDeselected send: #clear to: self chatWindow;
		when: #newChatSelected send: #newChatSelected: to: self chatWindow with: chatsList selectedChat.
	
	self 
		chatsList: chatsList;
		addMorph: self chatsList .