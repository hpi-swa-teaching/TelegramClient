initialization
initialize

	| textMorph |

	super initialize.

	textMorph := TextMorph new contents: self replyText;
		hResizing: #spaceFill;
		color: TCUDefaultValues colorLightGray;
		lock.

	self 
		color: self messageColor;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		borderWidth: 0;
		width: textMorph width.
	
	self addMorph: textMorph.
