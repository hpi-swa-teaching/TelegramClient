initialization
createInputField: aString

	self
		inputField: (TextMorph new
			contentsWrapped: aString asText;
			extent: self class defaultInputWidth @ 50;
			borderColor: TCUDefaultValues colorGray;
			borderWidth: 1;
			center: self instructionLabel center + (0 @ 30);
			hide);
		addMorph: self inputField.