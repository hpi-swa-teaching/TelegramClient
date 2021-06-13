testing
testSuperGroupMembers

	| superGroupChat |
	self mockTeleClient onRequestType: 'getSupergroupMembers' respond: TCTMMocks mockSupergroupMembersJson.
	superGroupChat := TCTMMocks mockUnloadedSuperGroupChat.

	self partialGroupMembersTestFor: superGroupChat