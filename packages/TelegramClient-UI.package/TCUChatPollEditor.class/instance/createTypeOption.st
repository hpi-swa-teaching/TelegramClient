drawing
createTypeOption

	self typeOption: 
		(RectangleMorph new
			color: TCUDefaultValues colorNileBlue;
			extent: self class defaultTypeOptionWidth @ (self class defaultTypeOptionHeight);
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