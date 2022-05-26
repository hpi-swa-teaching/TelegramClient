event handling
handleEvent: anEvent

	| update |
	update := nil.
	anEvent isError ifTrue: [self tryHandleError: anEvent].
	anEvent hasExtra ifTrue: [self handlePendingEvent: anEvent. ^ self].
	anEvent type caseOf: {
			['updateAuthorizationState'] -> [update := self authenticationHandler handleEvent: anEvent].
			['updateNewChat'] -> [self chatsHandler addChat: anEvent].
			['updateChatPosition'] -> [self chatsHandler updateChatPosition: anEvent].
			['updateChatLastMessage'] -> [self chatsHandler updateLastMessage: anEvent].
			['messages'] -> [self chatsHandler chatHistoryReceived: anEvent].
			['updateNewMessage'] -> [self handleMessageEvent: anEvent].
			['chat'] -> [self chatsHandler openNewChat: anEvent].
			['message'] -> [self chatsHandler answeredMessageReceived: anEvent.].
		}
		otherwise: [].
	update isSymbol ifTrue: [self triggerEvent: update].