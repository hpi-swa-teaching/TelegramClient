core communication
subscribeCore

	self core
		when: #awaitPhoneNumber send: #showPhoneNumberStep to: self;
		when: #awaitAuthCode send: #showAuthCodeStep to: self;
		when: #awaitAuthPassword send: #showAuthPasswordStep to: self;
		when: #authReady send: #logInCompleted to: self.