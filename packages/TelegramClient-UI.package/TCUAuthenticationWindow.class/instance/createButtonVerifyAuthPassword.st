initialization
createButtonVerifyAuthPassword

	self
		buttonVerifyAuthPassword: (TCUButton new
			text: 'Verify';
			center: self inputField center + (70 @ 50);
			on: #mouseUp send: #buttonVerifyAuthPasswordPressed to: self;
			hide;
			yourself);
		addMorph: self buttonVerifyAuthPassword.