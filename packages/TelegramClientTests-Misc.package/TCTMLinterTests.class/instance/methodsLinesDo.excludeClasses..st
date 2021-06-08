private
methodsLinesDo: aBlock excludeClasses: aCollection

	self methodTestObjects do: [:aSLMethodTestObject |
		(aCollection includes: (aSLMethodTestObject parent testClass)) 
			ifFalse: [
				aBlock value: aSLMethodTestObject sourceCode string lines
			]
		]