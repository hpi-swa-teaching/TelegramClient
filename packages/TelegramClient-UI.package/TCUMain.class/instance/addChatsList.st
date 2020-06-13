initialization
addChatsList

	| chatsList |	
	chatsList := TCUChatsList new 
		height: (self height - self defaultHeaderHeight);
		position: (self position + (0 @ self defaultHeaderHeight)).
	
	self 
		chatsList: chatsList;
		addMorph: self chatsList .