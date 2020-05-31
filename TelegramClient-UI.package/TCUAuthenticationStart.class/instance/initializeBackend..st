initialization
initializeBackend: aTCCApp

	
		tccApp := aTCCApp
			when: #awaitPhoneNumber send: #showFirstStep to: self;
			when: #awaitAuthCode send: #showSecondStep to: self;
			when: #authReady send: #showWelcomeMessage to: self.
			