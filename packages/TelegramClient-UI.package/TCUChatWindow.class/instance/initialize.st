initialization
initialize

	super initialize.

	self
		color: TCUDefaultValues colorLightGray;
		borderWidth: 0;
		selectedChat: TCCNullChat new;
		titleBar: Morph new.