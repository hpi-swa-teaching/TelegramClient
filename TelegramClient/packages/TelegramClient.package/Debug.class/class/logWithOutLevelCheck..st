as yet unclassified
logWithOutLevelCheck: t1 
	| t2 |
	self ensureStreamIsOpen.
	t2 := t1 asText.
	self writerStream showln: t2