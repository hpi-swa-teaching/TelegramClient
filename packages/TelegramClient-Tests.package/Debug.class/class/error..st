as yet unclassified
error: t1 
	| t2 |
	t2 := t1 asString asText.
	t2
		addAttribute: (TextColor color: Color red).
	self writeLog: t2