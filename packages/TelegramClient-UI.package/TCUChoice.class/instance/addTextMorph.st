drawing
addTextMorph

	|textMorph|
	
	textMorph := TextMorph new
		contents: self content;
		hResizing: #spaceFill;
		color: Color white;
		position: self class defaultTextMorphPosition;
		readOnly: true;
		lock;
		yourself.
	self addMorph: textMorph.
	