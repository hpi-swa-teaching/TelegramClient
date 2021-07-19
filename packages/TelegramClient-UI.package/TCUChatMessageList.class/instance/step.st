stepping and presenter
step

	self scroller offset y < self class defaultScrollOffsetBeforeLoading
		ifTrue: [self chat loadChatHistory].