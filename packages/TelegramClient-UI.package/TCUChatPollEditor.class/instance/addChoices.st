as yet unclassified
addChoices

	self addMorph: (TCUChoice newFor: 'Anonymous Poll?' isExclusive: false);
		addMorph: (TCUChoice newFor: 'Standard Poll' isExclusive: true);
		addMorph: (TCUChoice newFor: 'Multiple Options' isExclusive: true);
		addMorph: (TCUChoice newFor: 'Quiz' isExclusive: true).