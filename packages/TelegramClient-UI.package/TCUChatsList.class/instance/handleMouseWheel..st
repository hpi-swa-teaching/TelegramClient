event handling
handleMouseWheel: anEvent

	self maxHeight: self owner position y.

	anEvent isWheelUp ifTrue: [self scrollUp].
	anEvent isWheelDown ifTrue: [self scrollDown].