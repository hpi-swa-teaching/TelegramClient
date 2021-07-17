drawing
openCurrentWindow

	| currentCenter |
	
	currentCenter := self center.
	self extent: self currentWindow extent.
	self center: currentCenter.
	
	self addMorphCentered: self currentWindow.