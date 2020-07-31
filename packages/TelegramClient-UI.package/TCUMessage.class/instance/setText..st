accessing
setText: aString

	|expectedWidth|
	self text: (TextMorph new contents: aString;
		wrapFlag: true;
		margins: self defaultTextMargins;
		width: self defaultWidth;
		hResizing: #rigid;
		color: Color white;
		lock).
		
	expectedWidth := self text textStyle fontArray first widthOfString: aString.
	(expectedWidth <= self defaultMinTextLength) ifTrue: [self text width: expectedWidth + 50.
		self width: expectedWidth + 80].

	self addMorphCentered: self text.