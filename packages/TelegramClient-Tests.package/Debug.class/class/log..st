as yet unclassified
log: t1 
	| t2 |
	self logLevel == #log
		ifTrue: [t2 := t1 asString.
			self writeLog: t2]