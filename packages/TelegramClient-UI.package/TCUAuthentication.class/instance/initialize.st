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
<<<<<<< HEAD:TelegramClient-UI.package/TCUAuthentication.class/instance/initialize.st
		initializeMorphs.
		
=======
		initializeMorphs.
>>>>>>> develop:packages/TelegramClient-UI.package/TCUAuthentication.class/instance/initialize.st
