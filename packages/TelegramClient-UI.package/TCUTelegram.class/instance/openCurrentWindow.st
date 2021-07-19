drawing
openCurrentWindow

	self
		bounds: (self currentWindow extent center: self center);
		addMorphCentered: self currentWindow.