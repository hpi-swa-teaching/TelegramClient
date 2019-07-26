as yet unclassified
warn: aText from: anObject
(self logLevel == #log or: self logLevel == #warn) ifTrue: [
	| t |
	t := anObject class name asString, ': ', aText asString.
	t := t asText.
	t addAttribute: (TextColor color: Color orange).
	self writeLog: t.
	]