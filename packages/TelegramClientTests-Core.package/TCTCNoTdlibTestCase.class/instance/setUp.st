running
setUp

	self core: (TCCCore newWithTeleClient: TCTMMockTdlibClient new).
	self core userStore: TCTMMocks mockUserStore.