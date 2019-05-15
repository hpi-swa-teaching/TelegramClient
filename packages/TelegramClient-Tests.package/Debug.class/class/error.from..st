as yet unclassified
error: aText from: anObject
	| t |
	t := anObject class name asString , ': ', aText asString.
	t := t asText.
	t addAttribute: (TextColor color: Color red).
	self writeLog: t.