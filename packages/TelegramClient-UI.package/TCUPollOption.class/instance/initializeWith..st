as yet unclassified
initializeWith: aPollMessage
	
	pollMessage := aPollMessage.
	circleMorph := CircleMorph new
		color: aPollMessage messageColor;
		extent: 16@16;
		yourself.
	textMorph := aPollMessage class defaultTextMorph
			"contents: (TCUEmojiHelper embedEmojisInto: anOption); "
			hResizing: #spaceFill;
			color: Color white;
			margins: aPollMessage class defaultMargins;
			position: 26@0;
			yourself.
	self color: pollMessage messageColor;
		borderWidth: 0;
		addMorph: circleMorph;
		addMorph: textMorph;
		hResizing: #shrinkWrap;
		"hResizing: #spaceFill;"
		vResizing: #shrinkWrap.

	
	