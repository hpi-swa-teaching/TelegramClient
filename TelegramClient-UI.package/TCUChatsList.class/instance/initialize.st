as yet unclassified
initialize

	super initialize.
	
	self
		width: self defaultWidth;
		color: Color white;
		borderWidth: 0;
		initializeLayout.
		
	1 to: 5 do: [:x | self addItem].