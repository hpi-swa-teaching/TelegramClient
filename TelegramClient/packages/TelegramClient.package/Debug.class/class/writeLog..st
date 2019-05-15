as yet unclassified
writeLog: aText
	self ensureStreamIsOpen.
	self writerStream showln: aText.