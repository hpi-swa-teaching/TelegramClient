instance creation
newWith: aCore

	^ self basicNew
		core: aCore;
		initialize;
		yourself