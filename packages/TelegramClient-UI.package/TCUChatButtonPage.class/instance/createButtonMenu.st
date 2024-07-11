drawing
createButtonMenu

	self buttonMenu: (RectangleMorph new
			color: TCUDefaultValues colorNileBlue;
			extent: self class defaultMenuWidth @ (self class defaultMenuHeight);
			useRoundedCorners;
			layoutPolicy: TableLayout new;
			listDirection: #leftToRight;
			wrapDirection: #bottomToTop;
			wrapCentering: #topLeft;
			layoutInset: self class defaultLayoutInset;
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			cellInset: self class defaultCellInset;
			yourself).