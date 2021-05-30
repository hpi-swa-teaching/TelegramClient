drawing
addTitleBar
	
	self
		createTitleBar;
		addMorph: self titleBar;
		addChatName.
	self titleBar addVariableTransparentSpacer.
	self selectedChat isNotPrivate ifTrue: [self addMemberCount.].
	self addChatTitle.
