as yet unclassified
error: aText
	| t |
	t := aText asString asText.
	t addAttribute: (TextColor color: Color red).
	self writeLog: t.