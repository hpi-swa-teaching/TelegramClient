drawing
addChoices: aRectangle

	self createAnonymousChoice. 
	
	aRectangle addMorph: self anonymousChoice;
		addMorph: ((TCUChoiceExclusive newFor: 'Standard Poll' inPoll: self)
			name: 'regular';
			yourself);
		addMorph: ((TCUChoiceExclusive newFor: 'Multiple Options' inPoll: self)
			name: 'multiple';
			yourself);
		addMorph: ((TCUChoiceExclusive newFor: 'Quiz' inPoll: self)
			name: 'quiz';
			yourself).