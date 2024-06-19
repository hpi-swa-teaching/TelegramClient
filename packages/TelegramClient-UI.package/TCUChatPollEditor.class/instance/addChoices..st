drawing
addChoices: aRectangle

	aRectangle addMorph: (TCUChoice newFor: 'Anonymous Poll?');
		addMorph: (TCUChoiceExclusive newFor: 'Standard Poll' inPoll: self);
		addMorph: (TCUChoiceExclusive newFor: 'Multiple Options' inPoll: self);
		addMorph: (TCUChoiceExclusive newFor: 'Quiz' inPoll: self).