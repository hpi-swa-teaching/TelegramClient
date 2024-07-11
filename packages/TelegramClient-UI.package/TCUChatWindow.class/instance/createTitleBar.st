drawing
createTitleBar

	self titleBar: (AlignmentMorph newRow
		borderWidth: self class defaultBorderWidth;
		color: TCUDefaultValues colorLightGray;
		width: self width;
		height: self class defaultTitleBarHeight;
		topLeft: self topLeft;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		layoutInset: self class defaultLayoutInset;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: 12;
		yourself).

	self titleBar on: #mouseDown send: #showInfoPage to: self.
	self titleBar on: #mouseEnter send: #titleBarEntered to: self.
	self titleBar on: #mouseLeave send: #titleBarLeft to: self.