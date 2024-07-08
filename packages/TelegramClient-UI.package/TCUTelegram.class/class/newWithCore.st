instance creation
newWithCore

	self downloadDependencies.
	^ self newWithCore: TCCCore new