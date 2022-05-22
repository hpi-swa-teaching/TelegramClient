initialization
createButtonVerifyAuthPassword

	self
		buttonVerifyAuthPassword: (TCUButton new
			text: 'Verify';
			center: self inputField center + (70 @ 50);
			on: #mouseDown send: #buttonVerifyAuthPasswordPressed to: self;
			hide;
			yourself);
		addMorph: self buttonVerifyAuthPassword.