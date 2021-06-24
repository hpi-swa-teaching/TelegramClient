initialization
initialize

	super initialize.
	self initializeScroller.
	self loadButton: self createUserListButton.
	self addUsers.