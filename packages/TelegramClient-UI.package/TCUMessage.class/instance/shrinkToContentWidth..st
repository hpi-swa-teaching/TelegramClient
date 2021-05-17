accessing
shrinkToContentWidth: aTextMorph
	
	| expectedWidth |
	
	expectedWidth := aTextMorph textStyle defaultFont widthOfString: aTextMorph contents.
	(expectedWidth <= self defaultWidth)
		ifTrue: [aTextMorph width: expectedWidth + (self defaultTextMargins x * 2)].