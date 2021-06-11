initialization
initialize

	super initialize.

	self
		width: self class defaultWidth;
		color: Color white;
		borderWidth: 0;
		initializeLayout;
		items: OrderedCollection new;
		selectedChat: TCCNullChat new.