tests
testLongMethods

	self methodsLinesDo: [:lines | self assert: lines size <= 20] 
		excludeClasses: {TCTAcceptanceTests}