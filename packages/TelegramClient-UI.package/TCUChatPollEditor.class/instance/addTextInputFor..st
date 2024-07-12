drawing
addTextInputFor: aString

	| morph |
	morph := (RectangleMorph new
		borderWidth: self class defaultBorderWidth;
		color: TCUDefaultValues colorNileBlue;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		wrapDirection: #leftToRight;
		wrapCentering: #topLeft;
		layoutInset: self class defaultLayoutInset;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		yourself).
		
	self addInputFieldFor: morph.
	self addTextFieldFor: morph with: aString.
	^ morph