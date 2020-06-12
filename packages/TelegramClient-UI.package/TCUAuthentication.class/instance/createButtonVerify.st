initialization
createButtonVerify

	self 
		buttonVerify: (TCUButton new
			text: 'Verify';
			center: self inputField center + (70 @ 50);
			on: #mouseDown send: #buttonVerifyPressed to: self;
			hide);
		addMorph: self buttonVerify.