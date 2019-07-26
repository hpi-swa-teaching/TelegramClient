initialize
close
	self backend unregisterListener: self for: TD_users withSelector: #receivedUsers:.
	self backend unregisterListener: self for: TD_user withSelector: #addUser:.
	users removeAll.