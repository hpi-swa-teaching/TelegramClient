initialize
initialize
	super initialize.
	self backend registerListener: self for: TD_users withSelector: #receivedUsers:.
	self backend fetchAllContacts.
	users := OrderedCollection new.
	selectedContactList := OrderedCollection new.