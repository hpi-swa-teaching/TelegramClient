as yet unclassified
addSelectionMorph

	self isExclusive
		ifTrue: [selectionMorph := CircleMorph new]
		ifFalse: [selectionMorph := RectangleMorph new].
	selectionMorph
		color: TCUDefaultValues colorLightBlue;
		extent: 22@22.
	self addMorph: selectionMorph.