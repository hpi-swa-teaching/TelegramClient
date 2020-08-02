initialization
initializeForClasses: aCollection test: aSymbol plugIn: aPlugin

	super initialize.
	self systemClasses: Dictionary new.

	self
		initializeInstanceVariables;
		loadTest: aSymbol plugIn: aPlugin;
		fetchClasses: aCollection.