initialization
initializeDefaults

	self
		width: self defaultWidth;
		height: self defaultHeight;
		layoutPolicy: TableLayout new;
		cellPositioning: #topLeft;
		layoutInset: self defaultLayoutInset;
		color: self messageColor;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		borderWidth: 0;
		useRoundedCorners.