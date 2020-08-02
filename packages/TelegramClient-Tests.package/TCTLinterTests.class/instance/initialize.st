initialization
initialize

	super initialize.

	self
		classes: ((SystemNavigation default allClasses
			select: [:aClass |
				(aClass class category startsWith: 'TelegramClient') and: [(aClass class name startsWith: 'TCCFFIClient') not]]));
		classTestObjects: (self classes collect: [:anObject | anObject as: SLTestObject]).