as yet unclassified
newFrom: aUserEvent

	^ self new
		id: (aUserEvent at: 'id');
		firstname: (aUserEvent at: 'first_name');
		lastname: (aUserEvent at: 'last_name');
		username: (aUserEvent at: 'username')