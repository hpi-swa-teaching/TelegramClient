as yet unclassified
initialize

	super initialize.

	self
		color: (TCUDefaultValues colorLightGray alpha: 0.8);
		borderWidth: 0;
		on: #mouseUp send: #hide to: self.
		