drawing
addDescriptionText

	self description addMorph: (TextMorph new
		contents: self chat description asText;
		wrapFlag: true;
		hResizing: #spaceFill;
		lock).