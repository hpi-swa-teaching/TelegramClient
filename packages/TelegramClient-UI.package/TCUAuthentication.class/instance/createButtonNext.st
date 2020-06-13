initialization
createButtonNext

	self buttonNext: (TCUButton new 
			text: 'Next';
			center: inputField center + (0 @ 50);
			hide;
			on: #mouseDown send: #buttonNextPressed to: self).
			
	self addMorph: buttonNext.