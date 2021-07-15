drawing
addContent

	self
		createContentWrapper;
		addMorphFront: self contentWrapper.
	self chat isGroup ifTrue: [
		self addDescription.
		self chat isChannel ifFalse: [
			self addUserList.
		]
	].
	