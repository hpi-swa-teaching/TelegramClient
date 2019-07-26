initialize
initialize
	super initialize.
	debouncer := TD_Debouncer new.
	userCache := Dictionary new.
	self initializeVariables.
	self initializeListeners