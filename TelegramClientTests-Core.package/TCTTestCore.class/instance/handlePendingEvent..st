logIn
handlePendingEvent: anEvent 

	"anEvent type caseOf: {
		['basicGroupFullInfo'] -> [self assert: (anEvent includesKey: 'members')].
		['supergroupFullInfo'] -> [self assert: (1=1)].
	}
	otherwise: []."
	^super handlePendingEvent: anEvent