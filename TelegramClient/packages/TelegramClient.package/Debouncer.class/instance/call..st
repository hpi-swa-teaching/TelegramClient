debouncing
call: aBlock
	Time millisecondClockValue - timeout > timeOfLastCall ifFalse: [ ^nil].
	timeOfLastCall := Time millisecondClockValue.
	aBlock value