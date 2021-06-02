instance creation
newFromChatEvent: anEvent

	| type |
	type := ((anEvent at: 'chat') at: 'type') at: '@type'.
	
	^ (((type = 'chatTypeSupergroup') or: (type = 'chatTypeBasicGroup'))
		ifTrue: [TCCGroup new]
		ifFalse: [self new])
			initializeFromChatEvent: anEvent;
			yourself