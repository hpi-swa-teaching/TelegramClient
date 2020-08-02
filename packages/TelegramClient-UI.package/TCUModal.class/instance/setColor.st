drawing
setColor

	self type = 'information' ifTrue: [self color: Color white].
	self type = 'error' ifTrue: [self color: Color lightRed].