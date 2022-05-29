asserting
assertNotReading: aString inMorph: aMorph

	self assertNotReading: aString in: (MTFMorphWrapper newWith: {aMorph}).