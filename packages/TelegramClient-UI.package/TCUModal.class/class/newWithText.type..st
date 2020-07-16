instance creation
newWithText: aString type: aType

	^ self basicNew
		text: aString;
		type: aType;
		initialize