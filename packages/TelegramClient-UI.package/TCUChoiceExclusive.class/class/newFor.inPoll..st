as yet unclassified
newFor: aString inPoll: aPoll

	^ (super new)
	content: aString;
	poll: aPoll;
	addSelectionMorph;
	addTextMorph;
	yourself 