initialization
initialize

	| textMorph |
	super initialize.

	textMorph := TextMorph new
		contents: self content;
		left: self class defaultLayoutInset;
		top: self class defaultLayoutInset;
		color: Color white;
		lock.
	self color: Color gray;
		addMorph: textMorph;
		useRoundedCorners;
		borderWidth: self class defaultBorderWidth;
		borderColor: Color transparent;
		width: textMorph width + (2*self class defaultLayoutInset);
		height: textMorph height + (2*self class defaultLayoutInset).