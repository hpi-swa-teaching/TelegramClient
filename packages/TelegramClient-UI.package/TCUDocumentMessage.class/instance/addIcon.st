constructing
addIcon

	| iconForm |
	iconForm := self class getIcon.
	iconForm := iconForm scaledToHeight: self class maxHeight.
	self addMorphBack: iconForm asMorph
