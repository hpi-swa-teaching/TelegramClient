initialization
initialize

	super initialize.
	
	self
		width: self defaultWidth;
		height: self defaultHeight;
		borderWidth: 1;
		borderColor: TCUDefaultValues colorLightBlue;
		setColor;
		useRoundedCorners.
		
	self setText.