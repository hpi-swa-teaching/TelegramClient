as yet unclassified
addTextMorph

	|textMorph|
	
	textMorph := TextMorph new
		contents: self content;
		hResizing: #spaceFill;
		color: Color white;
		position: 26@0;
		readOnly: true;
		lock;
		yourself.
	self addMorph: textMorph
	