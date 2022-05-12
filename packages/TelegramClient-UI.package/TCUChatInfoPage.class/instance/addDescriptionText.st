drawing
addDescriptionText

	self description addMorph: (TextMorph new
		contents: self chat description;
		wrapFlag: true;
		hResizing: #spaceFill;
		lock;
		yourself).