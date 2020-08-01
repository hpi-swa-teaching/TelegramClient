accessing
addText

	| textMorph expectedWidth |
	textMorph := TextMorph new contents: self text;
		wrapFlag: true;
		margins: self defaultTextMargins;
		width: self defaultWidth;
		hResizing: #rigid;
		color: Color white;
		lock.
		
	expectedWidth := textMorph textStyle fontArray first widthOfString: self text.
	(expectedWidth <= self defaultWidth) ifTrue: [textMorph width: expectedWidth + 50].

	self
		extent: textMorph extent + self defaultMargin;
		addMorphCentered: textMorph.