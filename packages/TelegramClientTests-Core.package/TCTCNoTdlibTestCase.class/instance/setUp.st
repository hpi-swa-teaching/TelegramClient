running
setUp

	self core: (TCCCore newWithTeleClient: TCTMMockTeleClient new).
	self core userStore: TCTMMocks mockUserStore.