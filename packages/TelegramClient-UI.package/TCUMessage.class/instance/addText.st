drawing
addText

	| textMorph expectedWidth |

	textMorph := TextMorph new contents: self text;
		wrapFlag: true;
		margins: self defaultTextMargins;
		width: self defaultWidth;
		hResizing: #rigid;
		color: Color white;
		lock.

	expectedWidth := textMorph textStyle defaultFont widthOfString: self text.
	(expectedWidth <= self defaultWidth)
		ifTrue: [textMorph width: expectedWidth + (self defaultTextMargins x * 2)].

	self
		extent: textMorph extent + self defaultMargin;
		addMorphCentered: textMorph.