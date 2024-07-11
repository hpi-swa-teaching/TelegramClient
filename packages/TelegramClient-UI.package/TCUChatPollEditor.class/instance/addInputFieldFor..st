drawing
addInputFieldFor: aRectangle

	|inputField|
	inputField :=  (TextMorph new
		borderWidth: self class defaultInputFieldBorderWidth;
		borderColor: TCUDefaultValues colorLightBlue;
		color: Color white;
		contentsWrapped: '' asText;
		extent: self class defaultInputFieldWidth @ (self class defaultFieldHeight);
		yourself).
	self allInputFields add: inputField.
	aRectangle addMorph: inputField.
	