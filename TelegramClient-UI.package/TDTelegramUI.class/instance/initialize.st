initialize
initialize
	super initialize.
	debouncer := TDDebouncer new.
	userCache := Dictionary new.
	self initializeVariables.
	self initializeListeners