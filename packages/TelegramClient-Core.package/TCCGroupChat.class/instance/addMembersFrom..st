initialization
addMembersFrom: aMembersJsonObject

	[(aMembersJsonObject do: [:aMember|
		self members add: (self core users getUserFor: (aMember at: 'user_id')).
		]).] fork.