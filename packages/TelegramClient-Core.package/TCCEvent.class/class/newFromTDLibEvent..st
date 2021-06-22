instance creation
newFromTDLibEvent: anEvent

	^ (self newFrom: anEvent)
		type: (anEvent at: '@type');
		extra: (anEvent at: '@extra' ifAbsent: [nil]);
		removeKey: '@type';
		yourself