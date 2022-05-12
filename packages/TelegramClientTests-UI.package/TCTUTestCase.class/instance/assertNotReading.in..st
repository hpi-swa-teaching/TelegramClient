asserting
assertNotReading: aString in: aMorphWrapper

	self assert: (self findByTextContent: aString in: aMorphWrapper) morphs isEmpty.