drawing
addContent

	self
		createContentWrapper;
		addMorphFront: self contentWrapper.
	self chat isGroup ifTrue: [self addUserList; addDescription]