adding
addUser: user
	users add: user.
	self changed: #contactNames.