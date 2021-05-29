drawing
createContentWrapper

	self contentWrapper: (RectangleMorph new
		borderWidth: 0;
		color: Color transparent;
		width: self width * 0.8;
		height: self height - self defaultInfoBarHeight;
		center: self center + (0@(self defaultInfoBarHeight / 2));
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: 20;
		cellInset: self defaultContentInset).