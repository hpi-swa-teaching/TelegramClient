testing
testPositionIsUpdatedAfterInitialChatLoading

	| testChat newChatTime positionTime |

	testChat := self sharedCore chats first.
	self assert: testChat positionKnown.
	
	newChatTime := self sharedCore receiveOrderOfEventSatisfying: [:anEvent | anEvent type = 'updateNewChat' and: [((anEvent at: 'chat') at: 'id') = testChat id]].
	positionTime := self sharedCore receiveOrderOfEventSatisfying: [:anEvent | anEvent type = 'updateChatPosition' and: [(anEvent at: 'chat_id') = testChat id]].
	
	self assert: newChatTime < positionTime.