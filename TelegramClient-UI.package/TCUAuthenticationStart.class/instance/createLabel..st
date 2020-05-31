initialization
createLabel: aString

	self instructionLabel: (TextMorph new
		contents: aString asText;
		lock).
	
	^ self instructionLabel