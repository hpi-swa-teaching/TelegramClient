instance creation
newFromMessage: aMessage withWidth: aNumber

	^ (self basicNew)
		message: aMessage;
		initialize;
		width: aNumber;
		height: aMessage height;
		yourself