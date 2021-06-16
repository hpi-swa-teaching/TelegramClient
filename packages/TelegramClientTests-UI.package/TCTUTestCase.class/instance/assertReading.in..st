asserting
assertReading: aString in: aMorphWrapper

	self assert: (self findByTextContent: aString in: aMorphWrapper) morphs notEmpty.