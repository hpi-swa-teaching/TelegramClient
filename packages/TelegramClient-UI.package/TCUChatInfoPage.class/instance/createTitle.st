as yet unclassified
createTitle

	self title: (RectangleMorph new
		borderWidth: 0;
		color: Color white;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: self class defaultContentInset;
		useRoundedCorners;
		yourself).