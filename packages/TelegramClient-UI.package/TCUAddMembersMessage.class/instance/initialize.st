as yet unclassified
initialize
	
	| textMorph |
	super initialize.
	
	textMorph := (TextMorph new
		contents: self messageModel asText;
		color: Color white;
		left: self class defaultLayoutInset;
		top: self class defaultLayoutInset;
		yourself).
	self
		color: Color gray;
		addMorph: textMorph;
		borderWidth: 2;
		borderColor: Color transparent;
		useRoundedCorners;
		width: textMorph width + (2*self class defaultLayoutInset);
		height: textMorph height + (2*self class defaultLayoutInset).