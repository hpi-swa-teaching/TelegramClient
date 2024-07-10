initialization
initialize

	super initialize.

	self color: TCUDefaultValues colorNileBlue;
		borderWidth: 0;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		on: #mouseDown send: #updateChoice to: self;
		isSelected: false.
		