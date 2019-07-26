as yet unclassified
logWithOutLevelCheck: aText
	| t |
	self ensureStreamIsOpen.
	t := aText asText.
	self writerStream showln: t.