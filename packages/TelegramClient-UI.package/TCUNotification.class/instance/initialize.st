initialization
initialize

	super initialize.
	self
		color: Color white;
		borderColor: TCUDefaultValues colorLightBlue;
		borderWidth: 2;
		useRoundedCorners;
		height: self defaultHeight;
		width: self defaultWidth;
		addTextLabel;
		openInWorld;
		startTimeOut.