constructing
addIcon

	| iconForm iconMorph|
	iconForm := self class getIcon.
	iconMorph := (iconForm scaledToHeight: self class maxHeight) asMorph.
	iconMorph on: #mouseDown send: #moveDocument to: self.
	self addMorphBack: iconMorph
