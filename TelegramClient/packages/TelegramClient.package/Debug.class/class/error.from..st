as yet unclassified
error: t1 from: t2 
	| t3 |
	t3 := t2 class name asString , ': ' , t1 asString.
	t3 := t3 asText.
	t3
		addAttribute: (TextColor color: Color red).
	self writeLog: t3