as yet unclassified
endEntry
	"Display all the characters since the last endEntry, and reset the stream"
	self semaphore critical:[
			self changed: #appendEntryLater.
		self reset.
	].