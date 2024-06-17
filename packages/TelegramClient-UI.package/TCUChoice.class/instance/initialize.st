as yet unclassified
initialize

	super initialize.

	self color: TCUDefaultValues colorLightBlue;
		borderWidth: 0;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		on: #mouseDown send: #updateChoice to: self;
		isSelected: false.
		