drawing
createInputBar

	self inputBar: (RectangleMorph new
		borderWidth: self defaultBorderWidth;
		color: TCUDefaultValues colorLightGray;
		width: self width;
		height: self class defaultInputfieldHeight;
		bottomLeft: (self bottomLeft);
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		wrapCentering: #topLeft;
		layoutInset: self class defaultLayoutInset;
		vResizing: #shrinkWrap;
		cellInset: self class defaultCellInset;
		hide;
		yourself).