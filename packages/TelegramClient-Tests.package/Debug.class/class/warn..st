as yet unclassified
warn: t1 
	| t2 |
	(self logLevel == #log or: self logLevel == #warn)
		ifTrue: [t2 := t1 asString asText.
			t2
				addAttribute: (TextColor color: Color orange).
			self writeLog: t2]