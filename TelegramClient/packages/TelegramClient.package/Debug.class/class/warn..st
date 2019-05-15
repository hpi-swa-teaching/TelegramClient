as yet unclassified
warn: aText
(self logLevel == #log or: self logLevel == #warn) ifTrue: [
	| t |
	t := aText  asString asText.
	t addAttribute: (TextColor color: Color orange).
	self writeLog: t.
	]