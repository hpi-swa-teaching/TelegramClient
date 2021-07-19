drawing
openCurrentWindow

	self
		bounds: (Rectangle center: self center extent: self currentWindow extent);
		addMorphCentered: self currentWindow.