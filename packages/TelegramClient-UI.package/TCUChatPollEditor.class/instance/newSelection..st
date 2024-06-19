event handling
newSelection: aChoice

	(self currentSelection) ifNotNil: [
	self currentSelection updateChoice].

	self currentSelection: aChoice.