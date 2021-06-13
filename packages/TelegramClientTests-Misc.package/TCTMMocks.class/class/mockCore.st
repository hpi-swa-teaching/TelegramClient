core
mockCore

	^ (TCCCore newWithTeleClient: TCTMMockTeleClient new)
		users: self mockUsers;
		yourself