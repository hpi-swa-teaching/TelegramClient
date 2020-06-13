initialization
createInputBar

	self inputBar: (RectangleMorph new
		borderWidth: 0;
		color: Color white;
		width: self width;
		height: self defaultInputfieldHeight;
		position: (self position + (0 @ (self height - self defaultInputfieldHeight)));
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		layoutInset: 2;
		vResizing: #shrinkWrap;
		cellInset: 12;
		hide).