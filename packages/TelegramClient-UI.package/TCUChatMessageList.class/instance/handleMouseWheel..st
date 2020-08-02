event handling
handleMouseWheel: anEvent

	anEvent isWheelUp ifTrue: [self scrollUp].
	anEvent isWheelDown ifTrue: [self scrollDown].