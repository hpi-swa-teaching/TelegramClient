initialize-release
initializeForClasses: aCollection test: aSymbol plugIn: aPlugin

	super initialize.
	systemClasses := Dictionary new.
	
	self
		initializeInstanceVariables;
		loadTest: aSymbol plugIn: aPlugin;
		fetchClasses: aCollection.