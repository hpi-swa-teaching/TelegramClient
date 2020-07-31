accessing
setText: aString

	|expectedWidth|
	self text: (TextMorph new contents: aString;
		wrapFlag: true;
		margins: 5@4;
		width: 500;
		hResizing: #rigid;
		color: Color white;
		lock).
		
	expectedWidth := self text textStyle fontArray first widthOfString: aString.
	(expectedWidth <= 280) ifTrue: [self text width: expectedWidth + 50.
		self width: expectedWidth + 80].

	self addMorphCentered:  self text.