initialization
initialize

	super initialize.

	self scroller width: self class defaultWidth.
	self
		alwaysShowVScrollBar;
		displayChat: TCCNullChat new.