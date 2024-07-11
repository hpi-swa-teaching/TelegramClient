drawing
createDescription

	self description: (RectangleMorph new
		borderWidth: self class defaultBorderWidth;
		color: Color white;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: self class defaultContentInset;
		useRoundedCorners;
		yourself).