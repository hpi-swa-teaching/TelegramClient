drawing
addTextInputFor: aString

	| morph|
	morph := (RectangleMorph new
		borderWidth: 0;
		color: TCUDefaultValues colorNileBlue;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		wrapDirection: #leftToRight;
		wrapCentering: #topLeft;
		layoutInset: 2;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		yourself).
		
	self addInputFieldFor: morph.
	self addTextFieldFor: morph with: aString.
	^ morph.