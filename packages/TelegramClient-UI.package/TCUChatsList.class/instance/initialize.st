initialization
initialize

	super initialize.
	self
		width: self class defaultWidth;
		selectedChat: TCCNullChat new.