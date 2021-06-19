drawing
addUserBack: aUser

	self content addMorphBack: (TextMorph new
		contents: aUser fullName;
		autoFit: false; 
		width: self width;
		lock; yourself).