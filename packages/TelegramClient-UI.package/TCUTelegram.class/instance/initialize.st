initialize-release
initialize

	super initialize.

	self currentWindow: (TCUAuthentication newWithCore: self core).
	self currentWindow openCenteredInWorld.