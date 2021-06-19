initialization
initialize

	super initialize.
	self
		initializeContent;
		width: self class defaultWidth;
		color: Color white;
		borderWidth: 0;
		items: OrderedCollection new;
		selectedChat: TCCNullChat new.