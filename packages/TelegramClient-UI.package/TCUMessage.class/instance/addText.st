accessing
addText

	| expectedWidth |
	self text: (TextMorph new contents: self text;
		wrapFlag: true;
		margins: self defaultTextMargins;
		width: self defaultWidth;
		hResizing: #rigid;
		color: Color white;
		lock).
		
	expectedWidth := self text textStyle fontArray first widthOfString: self text.

	self addMorphCentered: self text.