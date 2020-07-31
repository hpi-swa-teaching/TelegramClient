accessing
initialize

	super initialize.

	self
		width: self defaultWidth;
		height: self defaultHeight;
		color: (self isSentByMe
			ifTrue: [TCUDefaultValues colorCarrot]
			ifFalse: [TCUDefaultValues colorLightBlue]);
		addText;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		borderWidth: 0;
		useRoundedCorners.