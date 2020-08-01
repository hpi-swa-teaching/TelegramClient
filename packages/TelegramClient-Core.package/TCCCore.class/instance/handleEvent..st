accessing
handleEvent: anEvent

	| update |
	update := nil.
	anEvent isError ifTrue: [self tryHandleError: anEvent].
	anEvent type caseOf: {
			['updateAuthorizationState'] -> [update := self authHandler handleEvent: anEvent].
			['updateNewChat'] -> [self chatsHandler addChat: anEvent].
			['updateChatOrder'] -> [self chatsHandler updateChatOrder: anEvent].
			['updateChatLastMessage'] -> [self chatsHandler updateLastMessage: anEvent].
			['messages'] -> [self chatsHandler chatHistoryReceived: anEvent].
			['updateNewMessage'] -> [self chatsHandler handleNewMessage: anEvent].
			['user'] -> [self setUserID: anEvent].
			['chat'] -> [self chatsHandler openNewChat: anEvent]}
		otherwise: [].

	update isSymbol ifTrue: [self triggerEvent: update].