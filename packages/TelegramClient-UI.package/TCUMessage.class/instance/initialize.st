initialization
initialize

	super initialize.

	self
		width: self defaultWidth;
		height: self defaultHeight;
		layoutPolicy: TableLayout new;
		cellPositioning: #topLeft;
		color: (self isOutgoing
			ifTrue: [TCUDefaultValues colorCarrot]
			ifFalse: [TCUDefaultValues colorLightBlue]);
		addText;
		addDate;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		borderWidth: 0;
		useRoundedCorners.