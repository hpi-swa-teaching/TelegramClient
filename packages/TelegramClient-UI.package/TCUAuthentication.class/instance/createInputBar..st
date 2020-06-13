initialization
createInputBar: aString
	
	self inputField: (TextMorph new 
		contentsWrapped: aString asText;
		extent: 150 @ 50;
		borderColor: TCUDefaultValues colorGray;
		borderWidth: 1;
		center: self instructionLabel center + (0 @ 30);
		hide;
		crAction: [self buttonNextPressed]).
	
	self addMorph: self inputField.