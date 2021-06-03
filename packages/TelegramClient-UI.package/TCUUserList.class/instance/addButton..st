adding
addButton: aButtonMorph

	self loadButton ifNotNil: [self content removeMorph: self loadButton].
	self loadButton: aButtonMorph. 
	self content addMorphBack: aButtonMorph.