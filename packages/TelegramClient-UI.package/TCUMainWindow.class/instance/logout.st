core communication
logout

	self core authHandler logout.
	self triggerEvent: #loggedOut.