private
initialize
	
	super initialize.
	
	self
		runner: (SLTestRunner new environment: SLDefaultEnvironment new);
		classes: ((SystemNavigation default allClasses
			select: [:aClass | 
				(aClass class category startsWith: 'TelegramClient') and: [(aClass class name startsWith: 'TCCFFIClient') not]])
			collect: [ :aObject | aObject as: SLTestObject]).
			