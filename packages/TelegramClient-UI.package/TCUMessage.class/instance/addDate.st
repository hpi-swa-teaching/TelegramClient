drawing
addDate

	| textMorph expectedWidth |

	textMorph := TextMorph new 
		contents: self messageDateText;
		wrapFlag: true;
		margins: ((self defaultTextMargins rect: self defaultTextMargins) top: 0);
		width: self defaultWidth;
		hResizing: #rigid;
		color: (self isOutgoing
			ifTrue: [TCUDefaultValues colorPottersClay]
			ifFalse: [TCUDefaultValues colorNileBlue]);
		lock.

	expectedWidth := textMorph textStyle defaultFont widthOfString: textMorph contents.
	(expectedWidth <= self defaultWidth)
		ifTrue: [textMorph width: expectedWidth + (self defaultTextMargins x * 2)].

	self
		addMorphBack: textMorph.