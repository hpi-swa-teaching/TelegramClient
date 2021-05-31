drawing
addContent

	self
		createContentWrapper;
		addMorph: self contentWrapper.
	
	self chat isGroup ifTrue: [self addDescription].