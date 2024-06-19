as yet unclassified
newFor: aString

	^ (super new)
	content: aString;
	addSelectionMorph;
	addTextMorph;
	yourself 