initialization
addChatsList

	self chatsList: (TCUChatsList new 
		height: (self height - self defaultHeaderHeight);
		position: (self position + (0 @ self defaultHeaderHeight))).
	
	self 
		addMorph: self chatsList .