initialization
initialize

	super initialize.
	self
		initializeDefaults;
		openInWorld.
		
	self 
		position: self calculatePosition; 
		startTimeOut