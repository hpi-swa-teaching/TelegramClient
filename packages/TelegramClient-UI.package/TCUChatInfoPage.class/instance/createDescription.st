drawing
createDescription

	self description: (RectangleMorph new
		borderWidth: 0;
		color: Color white;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: self defaultContentInset;
		useRoundedCorners;
		yourself).