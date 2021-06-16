drawing
addUserBack: aUser

	self content addMorphBack: (TextMorph new
		contents: aUser fullName;
		lock).