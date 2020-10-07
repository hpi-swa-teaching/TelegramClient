drawing
createInputBar

	self inputBar: (RectangleMorph new
		borderWidth: 0;
		color: TCUDefaultValues colorLightGray;
		width: self width;
		height: self defaultInputfieldHeight;
		bottomLeft: (self bottomLeft);
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		layoutInset: 2;
		vResizing: #shrinkWrap;
		cellInset: 12;
		hide).