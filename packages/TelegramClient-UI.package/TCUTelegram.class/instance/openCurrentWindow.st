drawing
openCurrentWindow

	self
		bounds: (Rectangle center: self center extent: self currentWindow extent);
		position: Display extent - self extent // 2; 
		addMorphCentered: self currentWindow. 
		