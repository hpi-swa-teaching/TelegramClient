accessing
showSecondStep
	
	self buttonNext delete.
	
	self instructionLabel 
		contents: 'Enter the code your recieved on your phone';
		center: self center.
		
	self inputField contents: ' '.
	self errorLabel delete.
	
	self 
		buttonVerify: (TCUButton new
			text: 'Verify';
			center: self inputField center + (70 @ 50);
			on: #mouseDown send: #buttonVerifyPressed to: self);
		addMorph: self buttonVerify.