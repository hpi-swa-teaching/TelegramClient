initialization
createButtonCancel

	self
		buttonCancel: (TCUButton new
			text: 'Cancel';
			center: self inputField center + ((-100) @ 50);
			hide;
			on: #mouseUp send: #buttonCancelPressed to: self;
			yourself);
		addMorph: self buttonCancel.