utility
decodeIntegers: anIntegerArray

	| c1 c2 index points |
	points := OrderedCollection new.

	index := 1.
	[index <= anIntegerArray size] whileTrue: [
		c1 := anIntegerArray at: index.
		index := index + 1.
		(c1 >= 16rd800 and: [c1 < 16rdc00]) ifTrue: [
			c2 := anIntegerArray at: index.
			index := index + 1.
			points add: ((c1 bitAnd: 16r3ff) << 10) + (c2 bitAnd: 16r3ff) + 16r10000.
		] ifFalse: [
			points add: c1.
		]
	].

	^ points