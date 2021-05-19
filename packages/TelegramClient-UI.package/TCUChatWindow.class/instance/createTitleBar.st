drawing
createTitleBar

	self titleBar: (AlignmentMorph newRow
		borderWidth: 0;
		color: TCUDefaultValues colorLightGray;
		extent:  (self width @  self defaultTitleBarHeigth);
		topLeft: (self topLeft);
		hResizing: #spaceFill). 