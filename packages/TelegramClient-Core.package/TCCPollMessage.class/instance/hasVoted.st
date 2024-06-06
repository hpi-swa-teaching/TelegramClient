accessing
hasVoted

	options detect: [ :option | option isChosen ] ifNone: [ ^false ].
	^ true.