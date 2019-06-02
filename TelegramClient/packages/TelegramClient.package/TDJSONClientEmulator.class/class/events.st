as yet unclassified
xOf: $,.
	t4 := t1 copyFrom: (t2 + 1) to: t1 size.
	t3 := t1 copyFrom: 1 to: (t2 - 1) asNumber.
	nextEvent := Array with: t3 with: t4.
	^ true