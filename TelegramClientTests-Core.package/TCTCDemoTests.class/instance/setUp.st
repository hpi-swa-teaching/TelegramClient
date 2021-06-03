as yet unclassified
setUp
	
	self core: (TCCCore newWithTeleClient: (TCTCMockTeleClient new)).
	1 seconds wait.