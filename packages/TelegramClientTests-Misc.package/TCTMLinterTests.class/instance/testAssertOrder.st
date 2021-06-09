tests
testAssertOrder

	"Checks if the arguments of assert: equals: are passed in the right order. 
	A Constant should be the first argument, otherwise the arguments appear 
	in the wrong order in the title of the debugger error message." 
	self methodsLinesDo: [:lines |
		lines do: [:line |
			(line matchesRegex: '.*self assert\: .*equals\: .*') ifTrue: [
				| firstWordAfterEquals |
				firstWordAfterEquals := (((line splitBy: 'equals: ') second) splitBy: ' ') first.
				[self assert: ((Compiler evaluate: firstWordAfterEquals) isNil).] on: Error do: ['']
			]
		]
	]