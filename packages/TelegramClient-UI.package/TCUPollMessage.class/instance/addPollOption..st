as yet unclassified
addPollOption: anOption
	
	| rectangleMorph circleMorph |
	rectangleMorph := RectangleMorph new.
	circleMorph := CircleMorph new.
	circleMorph
		color: Color black;
		extent: 30@30.
		rectangleMorph 
			addMorph: circleMorph;
			addMorph: (self class defaultTextMorph
			contents: anOption; 
			hResizing: #spaceFill;
			color: Color white;
			margins: self class defaultMargins;
			position: 35@0;
			yourself).
	^ rectangleMorph.