drawing
createTypeOption

	self typeOption: 
		(RectangleMorph new
			color: TCUDefaultValues colorNileBlue;
			extent: 200@200;
			useRoundedCorners;
			layoutPolicy: TableLayout new;
			listDirection: #leftToRight;
			wrapDirection: #bottomToTop;
			wrapCentering: #topLeft;
			layoutInset: 2;
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			cellInset: 8;
			yourself).