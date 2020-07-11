initialization
initialize

	super initialize.

	self
		width: self defaultWidth;
		color: Color white;
		borderWidth: 0;
		initializeLayout;
		maxHeight: self height;
		items: OrderedCollection new;
		selectedChat: TCCNullChat new.