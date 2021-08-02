event handling
handleEvent: anEvent

	| update file |
	update := nil.
	
	file := TCTCCoreResource file.
	anEvent asString printOn: file.
	file flush.
	
	anEvent isError ifTrue: [self tryHandleError: anEvent].
	anEvent hasExtra ifTrue: [self handlePendingEvent: anEvent. ^ self].
	anEvent type caseOf: {
			['updateAuthorizationState'] -> [update := self authHandler handleEvent: anEvent].
			['updateNewChat'] -> [self chatsHandler addChat: anEvent].
			['updateChatPosition'] -> [self chatsHandler updateChatPosition: anEvent].
			['updateChatLastMessage'] -> [self chatsHandler updateLastMessage: anEvent].
			['messages'] -> [self chatsHandler chatHistoryReceived: anEvent].
			['updateNewMessage'] -> [self handleMessageEvent: anEvent].
			['chat'] -> [self chatsHandler openNewChat: anEvent].
		}
		otherwise: [].
	update isSymbol ifTrue: [self triggerEvent: update].