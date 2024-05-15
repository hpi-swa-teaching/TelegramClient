drawing
createContentWrapper

	self contentWrapper: (RectangleMorph new
		borderWidth: 0;
		"color: Color red;"
		color: Color transparent;
		width: self width * self class defaultContentWidthPercentage;
		height: self height - self class defaultInfoBarHeight;
		center: self center + (0 @ (self class defaultInfoBarHeight / 2));
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: self class defaultContentLayoutInset;
		cellInset: self class defaultContentInset;
		yourself).