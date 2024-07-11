drawing
addSelectionMorph

	selectionMorph := RectangleMorph new.
	selectionMorph
		color: TCUDefaultValues colorNileBlue;
		extent: self class defaultSelectionMorphExtent.
	self addMorph: selectionMorph.