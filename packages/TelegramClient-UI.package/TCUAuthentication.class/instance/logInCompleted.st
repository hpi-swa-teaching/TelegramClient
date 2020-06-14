initialization
logInCompleted

	self triggerEvent: #authCompleted.
	super delete.
