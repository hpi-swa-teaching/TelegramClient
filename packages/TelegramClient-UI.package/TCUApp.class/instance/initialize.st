initialize-release
initialize

	super initialize.
	
	(TCUAuthentication newWithCore: self core) openCenteredInWorld.