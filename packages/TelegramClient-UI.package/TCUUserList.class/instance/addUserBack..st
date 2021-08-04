initialization
addUserBack: aUser

	self scroller addMorphBack: (TextMorph new
		contents: aUser fullName;
		autoFit: false;
		hResizing: #spaceFill;
		lock;
		yourself).