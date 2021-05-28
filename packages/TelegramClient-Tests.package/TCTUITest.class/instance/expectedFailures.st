failures
expectedFailures

	^ Smalltalk version = 'Squeak5.2'
		ifTrue: [#(testMessageUI)]
		ifFalse: [#()]