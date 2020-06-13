private
initialize
	
	super initialize.
	
	self
		runner: (SLTestRunner new environment: SLDefaultEnvironment new);
		classes: ((SystemNavigation default allClasses
			select: [:aClass | aClass class category startsWith: 'TelegramClient'])
			collect: [ :aObject | aObject as: SLTestObject]).