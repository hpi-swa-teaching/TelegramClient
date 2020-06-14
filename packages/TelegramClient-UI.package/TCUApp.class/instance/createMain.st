initialize-release
createMain

	self main: (TCUMain newWithCore: self core)
		openCenteredInWorld;
		when: #loggedOut send: #logout to: self;
		when: #deleted send: #delete to: self;
		yourself.