events
handleEvent: anEvent

	| update |
	update := nil.
	anEvent isError ifTrue: [self tryHandleError: anEvent].
	anEvent type caseOf: {
			['updateAuthorizationState'] -> [update := self authHandler handleEvent: anEvent].
			['updateNewChat'] -> [self chatsHandler addChat: anEvent].
			['updateChatPosition'] -> [self chatsHandler updateChatPosition: anEvent].
			['updateChatLastMessage'] -> [self chatsHandler updateLastMessage: anEvent].
			['messages'] -> [self chatsHandler chatHistoryReceived: anEvent].
			['updateNewMessage'] -> [self handleMessageEvent: anEvent].
			['user'] -> [self handlePendingEvent: anEvent].
			['supergroupFullInfo'] -> [self handlePendingEvent: anEvent].
			['basicGroupFullInfo'] -> [self handlePendingEvent: anEvent].
			['chat'] -> [self chatsHandler openNewChat: anEvent]}
		otherwise: [].
	update isSymbol ifTrue: [self triggerEvent: update].