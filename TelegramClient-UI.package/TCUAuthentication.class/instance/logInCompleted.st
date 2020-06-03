initialization
logInCompleted   

	self core getChats.  
	(TCUMain newWithCore: self core) openCenteredInWorld.
	super delete.