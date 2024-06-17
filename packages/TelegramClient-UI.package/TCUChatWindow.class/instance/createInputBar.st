drawing
createInputBar

	self inputBar: (RectangleMorph new
		borderWidth: 0;
		color: TCUDefaultValues colorLightGray;
		width: self width;
		height: self class defaultInputfieldHeight;
		bottomLeft: (self bottomLeft);
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		wrapCentering: #topLeft;
		layoutInset: 2;
		vResizing: #shrinkWrap;
		cellInset: 8;
		hide;
		yourself).