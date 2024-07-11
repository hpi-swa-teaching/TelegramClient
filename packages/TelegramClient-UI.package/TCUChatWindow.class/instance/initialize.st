initialization
initialize

	super initialize.

	self
		color: TCUDefaultValues colorLightGray;
		borderWidth: self class defaultBorderWidth;
		selectedChat: TCCNullChat new;
		titleBar: Morph new.