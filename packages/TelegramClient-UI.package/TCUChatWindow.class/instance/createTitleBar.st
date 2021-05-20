drawing
createTitleBar

	self titleBar: (RectangleMorph new
		borderWidth: 0;
		color: TCUDefaultValues colorLightGray;
		width: self width;
		height: self defaultTitleBarHeigth;
		topLeft: self topLeft;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		layoutInset: 2;
		vResizing: #shrinkWrap;
		cellInset: 12).
	
	self titleBar on: #mouseUp send: #showInfoPage to: self.