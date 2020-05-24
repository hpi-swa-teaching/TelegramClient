initialization
initialize

	super initialize.
	self 
		extent: self defaultExtent;
		color: Color white;
		borderWidth: 1;
		borderColor: TCDefaultValues colorGray;
		addHeader;
		showLoadingMessage;
		openCenteredInWorld.