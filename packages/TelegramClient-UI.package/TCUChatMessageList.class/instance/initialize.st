initialization
initialize

	super initialize.

	self
		chat: TCCNullChat new;
		messages: OrderedCollection new;
		alwaysShowVScrollBar.