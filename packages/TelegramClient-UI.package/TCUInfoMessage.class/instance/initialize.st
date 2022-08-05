initialization
initialize
	
	| textMorph |
	super initialize.
	
	textMorph := (TextMorph new
		lock;
		contents: self messageModel asText;
		color: Color white;
		left: self class defaultLayoutInset;
		top: self class defaultLayoutInset;
		yourself).
	self
		color: Color gray;
		addMorph: textMorph;
		borderWidth: self class defaultBorderWidth;
		borderColor: Color transparent;
		useRoundedCorners;
		width: textMorph width + (2 * self class defaultLayoutInset);
		height: textMorph height + (2 * self class defaultLayoutInset).