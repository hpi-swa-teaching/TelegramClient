as yet unclassified
loadNextEvent
	| t1 t2 t3 t4 |
	fileStream atEnd
		ifTrue: [^ false].
	t1 := fileStream nextLine.
	t2 := t1 indexOf: $,.
	t4 := t1 copyFrom: (t2 + 1) to: t1 size.
	t3 := (t1 copyFrom: 1 to: (t2 - 1)) asNumber.
	nextEvent := Array with: t3 with: t4.
	^ true