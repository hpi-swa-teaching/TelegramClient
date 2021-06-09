initialization
initialize

	super initialize.

	self
		classes: ((SystemNavigation default allClasses
			select: [:aClass |
				(aClass class category beginsWith: 'TelegramClient') and: [(aClass class name beginsWith: 'TCCFFIClient') not]]));
		classTestObjects: (self classes collect: [:anObject | anObject as: SLTestObject]).