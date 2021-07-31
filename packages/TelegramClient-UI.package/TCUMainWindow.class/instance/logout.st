core communication
logout

	self core authenticationHandler logout.
	self triggerEvent: #loggedOut.