drawing
createContentWrapper

	self contentWrapper: (RectangleMorph new
		borderWidth: 0;
		color: Color transparent;
		width: self width * self defaultContentWidthPercentage;
		height: self height - self defaultInfoBarHeight;
		center: self center + (0 @ (self defaultInfoBarHeight / 2));
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: self defaultContentLayoutInset;
		cellInset: self defaultContentInset).