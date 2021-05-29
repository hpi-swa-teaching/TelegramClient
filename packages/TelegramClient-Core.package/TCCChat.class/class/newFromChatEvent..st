instance creation
newFromChatEvent: anEvent

	| type chat |
	type := ((anEvent at: 'chat') at: 'type') at: '@type'.
	
	((type = 'chatTypeSupergroup') or: (type = 'chatTypeBasicGroup'))
		ifTrue: [chat := TCCGroup new]
		ifFalse: [chat := self new].

	^ chat
		initializeFromChatEvent: anEvent;
		yourself