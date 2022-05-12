initialization
createLabel: aString

	self instructionLabel: (TextMorph new
		contents: aString asText;
		lock;
		yourself).

	^ self instructionLabel