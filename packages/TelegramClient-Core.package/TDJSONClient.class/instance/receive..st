as yet unclassified
receive: t1 
	| t2 |
	t2 := self class receiveFrom: client withTimeout: t1.
	t2 = nil
		ifTrue: [^ nil].
	^ jsonParser deserializeString: t2