instance creation
newWithText: aString type: anotherString

	^ self basicNew
		text: aString;
		type: anotherString;
		initialize