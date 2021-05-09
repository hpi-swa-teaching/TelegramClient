events
handleUserEvent: anEvent
	anEvent at: '@extra'  ifPresent: [:extra|
		(self pendingMessages at: extra) value: anEvent. 
		]
	ifAbsent: [
		self setUserID: anEvent. 
		]