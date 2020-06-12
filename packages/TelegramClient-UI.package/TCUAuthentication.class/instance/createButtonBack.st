initialization
createButtonBack

		self buttonBack: (TCUButton new 
			text: 'Back';
			center: inputField center + ((-100) @ 50);
			hide;
			on: #mouseDown send: #buttonBackPressed to: self).
			
	self addMorph: buttonBack.
