event handling
nextPressed

	self isAnonymous: self anonymousChoice isSelected.
	self pollType: (self currentSelection) name.
	self typeOption abandon.
	self createNameSetter.