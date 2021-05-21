drawing
createTitleBar

	self titleBar: (AlignmentMorph newRow
		borderWidth: 0;
		color: TCUDefaultValues colorLightGray;
		width: self width;
		height: self defaultTitleBarHeigth;
		topLeft: (self topLeft);
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		layoutInset: 2;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: 12).