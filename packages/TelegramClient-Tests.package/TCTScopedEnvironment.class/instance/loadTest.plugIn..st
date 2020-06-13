as yet unclassified
loadTest: aSymbol plugIn: aPlugin

	self addTest: (SLTestData newFromDefault
		symbol: aSymbol;
		plugIn: aPlugin).