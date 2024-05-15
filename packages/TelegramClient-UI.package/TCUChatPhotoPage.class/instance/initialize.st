as yet unclassified
initialize

	super initialize.

	self
		color: TCUDefaultValues colorNileBlue;
		on: #mouseDown send: #hide to: self;
		borderWidth: 0.