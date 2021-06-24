messages
messageWrapper

	^ Morph new 
		width: self scroller width;
		cellInset: self class defaultMessageMargin;
		color: Color transparent; 
		layoutPolicy: TableLayout new;
		yourself