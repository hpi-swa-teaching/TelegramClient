drawing
addTextFieldFor: aRectangle with: aString

	|text|
	text := (TextMorph new
		contents: aString;
		extent: self class defaultTextFieldWidth @ (self class defaultFieldHeight);
		readOnly: true;
		color: Color white;
		lock;
		yourself).
	aRectangle addMorph: text.
