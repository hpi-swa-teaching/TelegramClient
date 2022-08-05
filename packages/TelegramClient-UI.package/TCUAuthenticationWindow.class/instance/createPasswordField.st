initialization
createPasswordField

	self
		passwordField: (TextMorph new
			contentsWrapped: '';
			extent: self class defaultInputWidth @ 50;
			borderColor: TCUDefaultValues colorGray;
			borderWidth: 1;
			center: self instructionLabel center + (0 @ 30);
			hide;
			yourself);
		addMorph: self passwordField.