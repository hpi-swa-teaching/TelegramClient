adding
addUser: user
	users add: user.
	selectedContactList := users collect: [:i | false].
	self changed: #contactNames