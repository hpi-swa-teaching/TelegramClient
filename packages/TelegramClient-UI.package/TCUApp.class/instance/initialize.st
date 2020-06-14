initialize-release
initialize

	super initialize.

	self 
		auth: ((TCUAuthentication newWithCore: self core)
			openCenteredInWorld;
			when: #authCompleted send: #createMain to: self;
			when: #loggedOut send: #logout to: self;
			when: #deleted send: #delete to: self;
			yourself).