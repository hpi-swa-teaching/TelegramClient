as yet unclassified
endEntry
	self semaphore
		critical: [self changed: #appendEntryLater.
			self reset]