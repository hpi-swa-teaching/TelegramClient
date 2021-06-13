initialization
initialize

	super initialize.

	self
		width: self class defaultWidth;
		height: self class defaultHeight;
		borderWidth: 1;
		borderColor: TCUDefaultValues colorLightBlue;
		setColor;
		useRoundedCorners;
		addCloseButton.

	self setText.