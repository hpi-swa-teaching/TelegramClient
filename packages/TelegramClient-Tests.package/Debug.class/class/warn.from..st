as yet unclassified
warn: t1 from: t2 
	| t3 |
	(self logLevel == #log or: self logLevel == #warn)
		ifTrue: [t3 := t2 class name asString , ': ' , t1 asString.
			t3 := t3 asText.
			t3
				addAttribute: (TextColor color: Color orange).
			self writeLog: t3]