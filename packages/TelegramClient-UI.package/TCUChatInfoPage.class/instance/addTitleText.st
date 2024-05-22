drawing
addTitleText

	self title addMorph: (TextMorph new
		contents: self chat title;
		centered;
		wrapFlag: true;
		hResizing: #spaceFill;
		lock;
		yourself).