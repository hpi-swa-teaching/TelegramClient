as yet unclassified
receivedUsers: aUsersMsg
	self backend unregisterListener: self for: TD_users withSelector: #receivedUsers:.
	self backend registerListener: self for: TD_user withSelector: #addUser:.
	aUsersMsg user_ids do: [:id | self backend fetchUser: id].