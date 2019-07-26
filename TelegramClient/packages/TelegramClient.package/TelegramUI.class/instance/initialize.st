initialize
initialize
	super initialize.
	debouncer := Debouncer new.
	userCache := Dictionary new.
	self initializeVariables.
	self initializeListeners