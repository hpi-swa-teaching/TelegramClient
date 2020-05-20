accessing
text: aString

 	text := TextMorph new.
	text 
		contents: aString asText;
		lock.
	
	self addMorphCentered: text.