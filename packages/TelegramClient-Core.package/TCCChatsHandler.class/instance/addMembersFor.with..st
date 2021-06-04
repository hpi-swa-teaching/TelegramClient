events
addMembersFor: aChat with: aMembersJsonObject

	[(aMembersJsonObject do: [:aMember|
		aChat members add: (self app users getUserFor: (aMember at: 'user_id')).
		]).] fork.