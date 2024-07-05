drawing
addInputFieldFor: aRectangle

	|inputField|
	inputField :=  (TextMorph new
		borderWidth: 2;
		borderColor: TCUDefaultValues colorLightBlue;
		color: Color white;
		contentsWrapped: '' asText;
		extent: 200 @ 20;
		yourself).
	self allInputFields add: inputField.
	aRectangle addMorph: inputField.
	