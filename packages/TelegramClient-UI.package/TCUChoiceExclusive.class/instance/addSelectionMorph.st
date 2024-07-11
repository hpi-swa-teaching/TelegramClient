drawing
addSelectionMorph

	selectionMorph := CircleMorph new.
	selectionMorph
		color: TCUDefaultValues colorNileBlue;
		extent: self class defaultSelectionMorphExtent.
	self addMorph: selectionMorph.