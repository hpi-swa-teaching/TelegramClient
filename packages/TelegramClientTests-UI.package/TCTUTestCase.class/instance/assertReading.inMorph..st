asserting
assertReading: aString inMorph: aMorph

	self assertReading: aString in: (MTFMorphWrapper newWith: {aMorph}).