accessing
initialize

	super initialize.

	self
		width: self defaultWidth;
		height: self defaultHeight;
		color: TCUDefaultValues colorLightBlue;
		hResizing: #shrinkWrap; 
          vResizing: #shrinkWrap;
		borderWidth: 0;
		useRoundedCorners.