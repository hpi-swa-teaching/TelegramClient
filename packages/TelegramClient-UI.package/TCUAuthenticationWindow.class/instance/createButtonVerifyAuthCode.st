initialization
createButtonVerifyAuthCode

	self
		buttonVerifyAuthCode: (TCUButton new
			text: 'Verify';
			center: self inputField center + (70 @ 50);
			on: #mouseUp send: #buttonVerifyAuthCodePressed to: self;
			hide;
			yourself);
		addMorph: self buttonVerifyAuthCode.