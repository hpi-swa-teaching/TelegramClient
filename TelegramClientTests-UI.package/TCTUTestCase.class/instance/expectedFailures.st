failures
expectedFailures

	^ Smalltalk version = 'Squeak5.2'
		ifTrue: [self expectedSqueak5_2Failures]
		ifFalse: [#()]