as yet unclassified
log: aText from: anObject
	self logLevel == #log ifTrue: [
	| t |
	t := anObject class name asString, ': ', aText asString.
	self writeLog: t.
	].