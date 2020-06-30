accessing
handleEvent: anEvent

	| update |
	update := nil.
	(((anEvent at: '@type') = 'error') and: [(anEvent at: 'code') = 400 ])
		ifTrue: [self halt: 'An Error Occured. Check Transcript Output.'].
	(anEvent at: '@type') = 'updateAuthorizationState'
		ifTrue: [update := self authHandler handleEvent: anEvent].
	(anEvent at: '@type') = 'updateNewChat'
		ifTrue: [self chatsHandler addChat: anEvent].
	(anEvent at: '@type') = 'updateChatOrder'
		ifTrue: [self chatsHandler updateChatOrder: anEvent].
	(anEvent at: '@type') = 'updateChatLastMessage'
		ifTrue: [self chatsHandler updateLastMessage: anEvent].
	(anEvent at: '@type') = 'messages'
		ifTrue: [Transcript show: (anEvent at: 'messages')].
	(anEvent at: '@type') = 'updateNewMessage'
		ifTrue: [chatsHandler handleNewMessage: anEvent].

	update isSymbol ifTrue: [self triggerEvent: update].