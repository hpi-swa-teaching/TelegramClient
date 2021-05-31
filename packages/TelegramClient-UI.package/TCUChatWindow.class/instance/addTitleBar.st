drawing
addTitleBar
	
	self
		createTitleBar;
		addMorph: self titleBar;
		addChatTitle.
	self titleBar addVariableTransparentSpacer.
	self selectedChat isNotPrivate ifTrue: [self addMemberCount.].
