core
mockCore

	^ (TCCCore newWithTeleClient: TCTMMockTeleClient new)
		users: self mockUserPromises;
		yourself