events
addMembersFor: aChat with: aMembersJsonObject

	[aChat members: (aMembersJsonObject collect: [:aMember|
		(self app users getUserFor: (aMember at: 'user_id')).
		]).] fork.
	