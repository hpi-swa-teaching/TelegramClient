instance creation
newFromTDLibEvent: anEvent

	^ (self newFrom: anEvent)
		type: (anEvent at: '@type');
		removeKey: '@type';
		yourself
		