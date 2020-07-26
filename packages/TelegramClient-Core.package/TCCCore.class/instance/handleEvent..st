accessing
handleEvent: anEvent

	| update |
	update := nil.
	(((anEvent at: '@type') = 'error') and: [(anEvent at: 'code') = 400 ])
		ifTrue: [self tryHandleError: anEvent.].
	(anEvent at: '@type') caseOf: {
			['updateAuthorizationState'] -> [update := self authHandler handleEvent: anEvent].
			['updateNewChat'] -> [self chatsHandler addChat: anEvent].
			['updateChatOrder'] -> [self chatsHandler updateChatOrder: anEvent].
			['updateChatLastMessage'] -> [self chatsHandler updateLastMessage: anEvent].
			['messages'] -> [self chatsHandler chatHistoryReceived: anEvent].
			['updateNewMessage'] -> [self chatsHandler handleNewMessage: anEvent].
			['updateUser'] -> [self setUserID: anEvent].
			['chat'] -> [self chatsHandler openNewChat: anEvent]}
		otherwise: [].

	update isSymbol ifTrue: [self triggerEvent: update].