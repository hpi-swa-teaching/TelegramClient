initialization
initialize

	super initialize.

	self
		chat: TCCNullChat new;
		alwaysShowVScrollBar;
		loaded: false.