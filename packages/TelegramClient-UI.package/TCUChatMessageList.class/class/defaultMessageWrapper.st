default values
defaultMessageWrapper

	^ Morph new
		cellInset: self defaultMessageMargin;
		color: Color transparent;
		layoutPolicy: TableLayout new;
		yourself