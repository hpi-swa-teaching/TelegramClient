instance creation
newBounds: bounds

	^ (super newBounds: bounds)
		addInfoBar;
		yourself.