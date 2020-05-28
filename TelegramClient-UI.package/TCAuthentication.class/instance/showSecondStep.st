accessing
showSecondStep

	self buttonNext delete.
	self instructionLabel 
		contents: 'Enter the code your recieved on your phone';
		center: self center.
		
	self inputField contents: ' '.
	self errorLabel delete.
	
	self 
		buttonBack: (TCButton new
			text: '<- Back';
			center: self inputField center + ((-70) @ 50);
			on: #mouseDown send: #buttonBackPressed to: self);
		buttonVerify: (TCButton new
			text: 'Verify';
			center: self inputField center + (70 @ 50);
			on: #mouseDown send: #buttonVerifyPressed to: self);
		"addMorph: self buttonBack;"
		addMorph: self buttonVerify.