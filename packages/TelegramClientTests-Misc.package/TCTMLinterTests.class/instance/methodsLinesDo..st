private
methodsLinesDo: aBlock

	self methodTestObjects do: [:aSLMethodTestObject |
		aBlock value: aSLMethodTestObject sourceCode string lines]