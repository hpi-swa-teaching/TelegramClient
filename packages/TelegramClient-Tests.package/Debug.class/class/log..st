as yet unclassified
log: aText
	self logLevel == #log ifTrue: [
	| t |
	t := aText asString.
	self writeLog: t.
	].