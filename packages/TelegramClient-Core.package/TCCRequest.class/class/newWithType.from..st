instance creation
newWithType: aString from: aDictionary

	^ (self newFrom: aDictionary)
		at: '@type' put: aString;
		yourself