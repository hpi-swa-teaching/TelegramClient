testing
testPositionIsUpdatedAfterInitialChatLoading

	| testChat newChatEvent updatePositionEvent |

	testChat := self sharedCore chats first.
	self assert: testChat positionKnown.
	
	newChatEvent := (self sharedCore loggedEventsSatisfying:
		[:anEvent | anEvent type = 'updateNewChat' and: [((anEvent at: 'chat') at: 'id') = testChat id]])
		first.
	updatePositionEvent := (self sharedCore loggedEventsSatisfying:
		[:anEvent | anEvent type = 'updateChatPosition' and: [(anEvent at: 'chat_id') = testChat id]])
		first.
	
	self assert: (self sharedCore chronologicalPositionOf: newChatEvent) < (self sharedCore chronologicalPositionOf: updatePositionEvent).