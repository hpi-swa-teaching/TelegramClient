instance creation
newFromTDLibEvent: anEvent

	Transcript show: (anEvent at: '@type'), String cr.
	^ (self newFrom: anEvent)
		type: (anEvent at: '@type');
		removeKey: '@type';
		yourself