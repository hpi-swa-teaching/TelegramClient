initialization
addInputField

	self inputField: (RectangleMorph new
		borderWidth: 0;
		color: Color white;
		width: self width;
		height: self defaultInputfieldHeight;
		position: (self position + (0 @ (self height - self defaultInputfieldHeight)));
		hide).
		
	self addMorph: self inputField.
	