accessing
handleEvent: anEvent

	| update |
	update := nil.
	
	Transcript show: anEvent.
	
	(((anEvent at: '@type') = 'error') and: [(anEvent at: 'code') = 400 ])
		ifTrue: [self halt: 'An Error Occured. Check Transcript Output.'].
	(anEvent at: '@type') = 'updateAuthorizationState'
		ifTrue: [Transcript show: anEvent.
				Transcript show: '--------------------------------'.
			update := self authHandler handleEvent: anEvent].
	(anEvent at: '@type') = 'updateNewChat'
		ifTrue: [self chatsHandler addChat: anEvent].
	(anEvent at: '@type') = 'updateChatOrder'
		ifTrue: [self chatsHandler updateChatOrder: anEvent].
	(anEvent at: '@type') = 'updateChatLastMessage'
		ifTrue: [self chatsHandler updateLastMessage: anEvent].
	(anEvent at: '@type') = 'messages'
		ifTrue: [self chatsHandler chatHistoryReceived: anEvent].
	(anEvent at: '@type') = 'updateNewMessage'
		ifTrue: [chatsHandler handleNewMessage: anEvent].

	update isSymbol ifTrue: [self triggerEvent: update].