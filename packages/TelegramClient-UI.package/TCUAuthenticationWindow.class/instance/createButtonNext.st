initialization
createButtonNext

	self
		buttonNext: (TCUButton new
			text: 'Next';
			center: self inputField center + (100 @ 50);
			hide;
			on: #mouseUp send: #buttonNextPressed to: self;
			yourself);
		addMorph: self buttonNext.