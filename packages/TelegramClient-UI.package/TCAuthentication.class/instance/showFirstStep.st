initialization
showFirstStep

	self
		addMorphCentered: (self createLabel: 'Enter Phone number');
		addMorph: (self createInputField: '+49');
		buttonNext: (TCButton new 
			text: 'Next';
			center: inputField center + (0 @ 50);
			 on: #mouseDown send: #buttonNextPressed to: self);
		addMorph: buttonNext;
		createErrorLabel: ''.