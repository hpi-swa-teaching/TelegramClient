accessing
handleEvent: anEvent
	
	| update |

	update := nil.
	(((anEvent at: '@type') = 'error') and: [(anEvent at: 'code') = 400 ])
		ifTrue: [self halt: 'There probably already is an instance of TCClient running'].
	
	(anEvent at: '@type')  = 'updateAuthorizationState'
		ifTrue: [update := self authHandler handleEvent: anEvent].
		
	(anEvent at: '@type')  = 'chats'
		ifTrue: [update := self messageHandler handleEvent: anEvent].
		
	(anEvent at: '@type') = 'updateUserFullInfo'
		ifTrue: [self addChat: anEvent].
		
	(anEvent at: '@type') = 'chat'
		ifTrue: [self setChatInfos: anEvent].
		
	update isSymbol ifTrue: [self triggerEvent: update].