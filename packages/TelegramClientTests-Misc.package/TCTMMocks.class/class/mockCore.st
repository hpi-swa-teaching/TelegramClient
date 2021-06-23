core
mockCore

	^ (TCCCore newWithTeleClient: TCTMMockTeleClient new)
		users: self mockUserStore;
		yourself