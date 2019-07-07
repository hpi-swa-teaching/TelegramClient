as yet unclassified
addUser: user
	users add: user.
	selectedContactList := Array new: users size.
	1 to: users size do: [:i | selectedContactList at: i put: false].
	self changed: #contactNames.