initialization
initialize

	super initialize.

	self color: TCUDefaultValues colorNileBlue;
		borderWidth: self class defaultBorderWidth;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		on: #mouseDown send: #updateChoice to: self;
		isSelected: false.
		