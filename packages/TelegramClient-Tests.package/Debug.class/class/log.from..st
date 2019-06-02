as yet unclassified
log: t1 from: t2 
	| t3 |
	self logLevel == #log
		ifTrue: [t3 := t2 class name asString , ': ' , t1 asString.
			self writeLog: t3]