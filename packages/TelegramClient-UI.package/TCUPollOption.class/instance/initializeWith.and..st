as yet unclassified
initializeWith: aPollMessage and: anOption
	| text |
	
	pollMessage := aPollMessage.
	pollOption := anOption.
	(aPollMessage messageModel allowsMultipleAnswers)
		ifTrue: [selectionMorph := RectangleMorph new]
		ifFalse: [selectionMorph := CircleMorph new].
	selectionMorph
		color: aPollMessage messageColor;
		extent: 16@16.
	text := (anOption votePercentage asString),'% ',(anOption text).
	textMorph := aPollMessage class defaultTextMorph
		contents: (TCUEmojiHelper embedEmojisInto: text);
		hResizing: #spaceFill;
		color: Color white;
		margins: aPollMessage class defaultMargins;
		position: 26@0;
		lock;
		yourself.
	self color: pollMessage messageColor;
		borderWidth: 0;
		addMorph: selectionMorph;
		addMorph: textMorph;
		hResizing: #shrinkWrap;
		"hResizing: #spaceFill;"
		vResizing: #shrinkWrap;
	on: #mouseDown send: #mouseDown to: self
	updateSelection.

	
	