asserting
seeing: aMorphClassName in: aSuperMorph

	aSuperMorph findDeepSubmorphThat:
		[:submorph | submorph isKindOf: aMorphClassName]
		ifAbsent:
			[^ false].
	^ true