drawing
addDescription

	self createDescription.
	self contentWrapper addMorph: self description.
	[
		[self chat description isEmpty] whileTrue: [100 milliSeconds wait].
		self addDescriptionText.
	] fork.