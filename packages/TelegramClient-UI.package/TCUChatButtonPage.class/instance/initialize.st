initialization
initialize

	super initialize.

	self
		color: (TCUDefaultValues colorLightGray alpha: self class defaultOpacity);
		borderWidth: self class defaultBorderWidth;
		on: #mouseUp send: #clear to: self.