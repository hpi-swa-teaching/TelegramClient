instance creation
newWithCore: aCore

	^ self basicNew
		core: aCore;
		initialize;
		yourself