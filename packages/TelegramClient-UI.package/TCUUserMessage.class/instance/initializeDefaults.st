initialization
initializeDefaults

	self
		width: self class defaultWidth;
		height: self class defaultHeight;
		layoutPolicy: TableLayout new;
		cellPositioning: #topLeft;
		layoutInset: self class defaultLayoutInset;
		color: self messageColor;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		borderWidth: 0;
		useRoundedCorners.