as yet unclassified
initialize
	self setContactIndex: 0.
	super initialize.
	self backend registerListener: self for: TD_users withSelector: #receivedUsers:.
	self backend fetchAllContacts.
	users := OrderedCollection new.
	