initialization
createInputField: aString
	
	self inputField: (TextMorph new 
		contentsWrapped: aString asText;
		extent: 150 @ 50;
		borderColor: TCUDefaultValues colorGray;
		borderWidth: 1;
		center: self instructionLabel center + (0 @ 30);
		crAction: [self buttonNextPressed]).
	
	^ self inputField