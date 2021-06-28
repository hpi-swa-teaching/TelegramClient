utility
extractPathFrom: anEvent
	
	^ (anEvent at: 'local') at: 'path'