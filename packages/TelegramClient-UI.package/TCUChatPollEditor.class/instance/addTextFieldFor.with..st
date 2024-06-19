drawing
addTextFieldFor: aRectangle with: aString

	|text|
	text := (TextMorph new
		contents: aString;
		extent: 20 @ 20;
		readOnly: true;
		color: Color white;
		lock;
		yourself).
	aRectangle addMorph: text.
