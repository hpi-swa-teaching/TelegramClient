as yet unclassified
initializeWith: aPollMessage and: anOption
	
	pollMessage := aPollMessage.
	pollOption := anOption.
	circleMorph := CircleMorph new
		color: aPollMessage messageColor;
		extent: 16@16;
		yourself.
	textMorph := aPollMessage class defaultTextMorph
		contents: (TCUEmojiHelper embedEmojisInto: anOption text);
		hResizing: #spaceFill;
		color: Color white;
		margins: aPollMessage class defaultMargins;
		position: 26@0;
		lock;
		yourself.
	self color: pollMessage messageColor;
		borderWidth: 0;
		addMorph: circleMorph;
		addMorph: textMorph;
		hResizing: #shrinkWrap;
		"hResizing: #spaceFill;"
		vResizing: #shrinkWrap;
	on: #mouseDown send: #mouseDown to: self
	updateSelection.

	
	