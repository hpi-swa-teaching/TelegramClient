running
setUp

	TCCLibTdJson downloadArchiveIfNotExists
	self sharedResource: TCTCCoreResource current.
	self sharedResource ensureLoggedIn.