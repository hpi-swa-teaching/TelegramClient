unicode matching
createUnicodeRunsFrom: aString

	^ aString 
		inject: OrderedCollection new
		into: [:runs :char |
			self add: char to: runs.
		]