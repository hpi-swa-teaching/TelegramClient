accessing
subscribeCore

	self core
		when: #awaitPhoneNumber send: #showFirstStep to: self;
		when: #awaitAuthCode send: #showSecondStep to: self;
		when: #authReady send: #logInCompleted to: self.