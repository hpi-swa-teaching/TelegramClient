initialization
initialize
	
	| textMorph |
	super initialize.
	
	textMorph := TextMorph new 
		contents: self content;
		lock.
	self color: Color gray;
		width: textMorph width  + self class defaultMargin;
		addMorphCentered: textMorph;
		useRoundedCorners;
		borderWidth: 0.