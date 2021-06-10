testing
testBasicGroupMembers

	| basicGroupChat |
	self mockTeleClient onRequestType: 'getBasicGroupFullInfo' respond: TCTMMocks mockBasicGroupFullInfoJson.
	basicGroupChat := TCTMMocks mockUnloadedBasicGroupChat. 
	
	self partialGroupMembersTestFor: basicGroupChat