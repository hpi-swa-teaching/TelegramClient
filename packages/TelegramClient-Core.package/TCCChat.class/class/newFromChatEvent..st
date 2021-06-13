instance creation
newFromChatEvent: anEvent

	| type chat |
	type := ((anEvent at: 'chat') at: 'type') at: '@type'.
	type caseOf: {
		['chatTypeSupergroup']->[chat := TCCSuperGroupChat new].
		['chatTypeBasicGroup']->[chat := TCCBasicGroupChat new].
		['chatTypePrivate']->[chat := TCCPrivateChat new].
	}.

	^ chat initializeFromChatEvent: anEvent; yourself
