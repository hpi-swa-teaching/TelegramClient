initialization
initialize

	super initialize.
	self
		subscribeCore;
		extent: self defaultExtent;
		color: Color white;
		borderWidth: 1;
		borderColor: TCUDefaultValues colorGray;
		addHeader;
		showLoadingMessage;
		initializeMorphs.