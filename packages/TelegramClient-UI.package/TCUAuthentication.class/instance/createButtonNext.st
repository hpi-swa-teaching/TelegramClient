initialization
createButtonNext

	self buttonNext: (TCUButton new 
			text: 'Next';
			center: self inputField center + (100 @ 50);
			hide;
			on: #mouseDown send: #buttonNextPressed to: self).
			
	self addMorph: self buttonNext.