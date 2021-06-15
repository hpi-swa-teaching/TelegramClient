initialization
initialize

	super initialize.
	self initializeContent.
	self loadButton: self createUserListButton.
	self addUsers.