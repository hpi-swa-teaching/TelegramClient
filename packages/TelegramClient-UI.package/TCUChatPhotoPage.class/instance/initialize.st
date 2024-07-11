initialization
initialize

	super initialize.

	self
		color: TCUDefaultValues colorNileBlue;
		on: #mouseDown send: #hide to: self;
		borderWidth: self class defaultBorderWidth.