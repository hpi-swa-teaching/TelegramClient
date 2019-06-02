as yet unclassified
semaphore
	^ AccessSema
		ifNil: [AccessSema := Semaphore forMutualExclusion]