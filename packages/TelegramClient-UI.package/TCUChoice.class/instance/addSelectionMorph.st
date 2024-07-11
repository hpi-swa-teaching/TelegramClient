drawing
addSelectionMorph

	selectionMorph := RectangleMorph new.
	selectionMorph
		color: TCUDefaultValues colorNileBlue;
		extent: 22@22.
	self addMorph: selectionMorph.