instance creation
newFor: aString isExclusive: aBoolean

	^ (super new)
	content: aString;
	isExclusive: aBoolean;
	addSelectionMorph;
	addTextMorph;
	yourself 