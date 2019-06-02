as yet unclassified
receive: t1 
	self loadNextEvent
		ifFalse: [^ nil].
	(nextEvent at: 1)
			- t1 > self simulationTime
		ifTrue: [t1 seconds asDelay wait.
			^ nil].
	(((nextEvent at: 1) - self simulationTime) max: 0) milliSeconds asDelay wait.
	^ jsonParser
		deserializeString: (nextEvent at: 2)