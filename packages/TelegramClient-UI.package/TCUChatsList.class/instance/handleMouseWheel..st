accessing
handleMouseWheel: anEvent
	
	self maxHeight isNil ifTrue: [
		self maxHeight: self position y.].

	anEvent isWheelUp ifTrue: [self scrollUp].
	anEvent isWheelDown ifTrue: [self scrollDown].