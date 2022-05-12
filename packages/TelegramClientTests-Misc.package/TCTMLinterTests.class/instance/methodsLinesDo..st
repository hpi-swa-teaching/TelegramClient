private
methodsLinesDo: aBlock

	self methodTestObjects do: [:aSLMethodTestObject |
		| lines |
		lines := aSLMethodTestObject sourceCode string lines.
		((lines size >= 2) and: [lines second includesSubstring: '"@linter-ignore"'])
			ifFalse: [
				aBlock value: lines
			]
	]