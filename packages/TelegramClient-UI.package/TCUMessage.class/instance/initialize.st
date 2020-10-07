initialization
initialize

	super initialize.

	self
		width: self defaultWidth;
		height: self defaultHeight;
		color: (self isOutgoing
			ifTrue: [TCUDefaultValues colorCarrot]
			ifFalse: [TCUDefaultValues colorLightBlue]);
		addText;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		borderWidth: 0;
		useRoundedCorners.