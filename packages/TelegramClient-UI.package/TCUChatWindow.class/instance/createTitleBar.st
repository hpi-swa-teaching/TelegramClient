drawing
createTitleBar

	self titleBar: (AlignmentMorph newRow
		borderWidth: 0;
		color: TCUDefaultValues colorLightGray;
		width: self width;
		height: self class defaultTitleBarHeight;
		topLeft: self topLeft;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		layoutInset: 2;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: 12;
		yourself).

	self titleBar on: #mouseDown send: #showInfoPage to: self.