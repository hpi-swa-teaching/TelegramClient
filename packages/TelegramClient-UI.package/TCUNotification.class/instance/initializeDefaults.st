initialization
initializeDefaults

	self
		color: Color white;
		borderColor: TCUDefaultValues colorLightBlue;
		borderWidth: self class defaultBorderWidth;
		useRoundedCorners;
		height: self class defaultHeight;
		width: self class defaultWidth;
		layoutPolicy: TableLayout new;
		cellPositioning: #topLeft;
		layoutInset: self class defaultLayoutInset.