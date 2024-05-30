as yet unclassified
addPollOption: anOption
	
	| rectangleMorph circleMorph |
	rectangleMorph := RectangleMorph new.
	circleMorph := CircleMorph new.
	circleMorph
		color: self messageColor;
		extent: 16@16.
	rectangleMorph
		color: self messageColor;
		borderWidth: 0;
		addMorph: circleMorph;
		addMorph: (self class defaultTextMorph
			contents: (TCUEmojiHelper embedEmojisInto: anOption); 
			hResizing: #spaceFill;
			color: Color white;
			margins: self class defaultMargins;
			position: 26@0;
			yourself);
		hResizing: #shrinkWrap;
		"hResizing: #spaceFill;"
		vResizing: #shrinkWrap.
	^ rectangleMorph.