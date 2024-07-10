instance creation
newFor: aString

	^ (super new)
	content: aString;
	addSelectionMorph;
	addTextMorph;
	yourself 