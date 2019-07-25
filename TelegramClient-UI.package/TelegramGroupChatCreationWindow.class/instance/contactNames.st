accessing
contactNames
	^ users collect: [:e | self userToUIString: e].