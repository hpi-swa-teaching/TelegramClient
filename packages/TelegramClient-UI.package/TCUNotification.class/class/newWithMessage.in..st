instance creation
newWithMessage: aMessage in: aChatTitle

	^ self basicNew
		text: aChatTitle,': ', aMessage message;
		initialize