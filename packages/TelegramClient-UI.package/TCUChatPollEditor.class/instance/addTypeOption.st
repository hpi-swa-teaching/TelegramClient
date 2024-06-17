as yet unclassified
addTypeOption

	self typeOption: (RectangleMorph new
		color: TCUDefaultValues colorLightBlue;
		useRoundedCorners;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		wrapCentering: #topLeft;
		layoutInset: 2;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		cellInset: 8;
		addMorph: (TCUChoice newFor: 'Anonymous Poll?' isExclusive: false);
		addMorph: (TCUChoice newFor: 'Standard Poll' isExclusive: true);
		addMorph: (TCUChoice newFor: 'Multiple Options' isExclusive: true);
		addMorph: (TCUChoice newFor: 'Quiz' isExclusive: true);
		yourself).

	self addMorphFront: self typeOption.
	self typeOption center: self center.
	