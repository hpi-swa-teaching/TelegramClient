initialization
initialize

	super initialize.

	self
		initializeScroller;
		items: OrderedCollection new;
		borderWidth: 0.