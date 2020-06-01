as yet unclassified
addChatsList
	
	self 
		chatsList: (TCUChatsList new 
			height: (self height - self defaultHeaderHeight);
			position: (self position + (0 @ self defaultHeaderHeight)));
		addMorph: self chatsList .