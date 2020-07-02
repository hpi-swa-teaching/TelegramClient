initialize-release
initialize

	super initialize.

	self auth: (TCUAuthentication newWithCore: self core).
			
	self auth
			when: #authCompleted send: #createMain to: self;
			when: #loggedOut send: #logout to: self;
			when: #deleted send: #delete to: self;
			openCenteredInWorld.