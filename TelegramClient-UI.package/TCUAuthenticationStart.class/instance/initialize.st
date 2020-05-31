initialization
initialize

	super initialize.
	self 
		initializeBackend: TCCApp new;
		extent: self defaultExtent;
		color: Color white;
		borderWidth: 1;
		borderColor: TCUDefaultValues colorGray;
		addHeader;
		showLoadingMessage;
		openCenteredInWorld.