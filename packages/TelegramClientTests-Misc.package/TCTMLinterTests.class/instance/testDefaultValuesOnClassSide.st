tests
testDefaultValuesOnClassSide

	self methodTestObjects
		reject: [:method | method methodName = 'defaultTimeout']
		thenDo: [:method | (method methodName beginsWith: 'default') ifTrue:
			[self assert: method classSide]
		].