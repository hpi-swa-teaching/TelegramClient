initialization
initialize

	super initialize.

	self
		initializeScroller;
		borderWidth: 0;
		chat: TCCNullChat new;
		messages: OrderedCollection new;
		alwaysShowVScrollBar.