initialize-release
initialize

	super initialize.

	self 
		auth: ((TCUAuthentication newWithCore: self core)
			openCenteredInWorld;
			when: #authCompleted send: #createMain to: self;
			yourself).