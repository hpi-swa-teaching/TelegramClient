drawing
addTitleBar
	
	self
		createTitleBar;
		addMorph: self titleBar;
		addChatTitle.
	self titleBar addVariableTransparentSpacer.
	self selectedChat isGroup ifTrue: [self addMemberCount.]
