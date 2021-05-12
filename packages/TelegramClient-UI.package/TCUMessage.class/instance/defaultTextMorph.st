default values
defaultTextMorph

	^ TextMorph new 
		wrapFlag: true;
		width: self defaultWidth;
		hResizing: #rigid;
		lock;
		yourself