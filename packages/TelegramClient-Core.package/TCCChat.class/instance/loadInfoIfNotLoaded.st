loading
loadInfoIfNotLoaded

	self infoLoaded ifFalse: [
		self loadInfo.
		self infoLoaded: true.
	]