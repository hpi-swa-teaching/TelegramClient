instance creation
newFrom: aUserEvent

	^ self new
		id: (aUserEvent at: 'id');
		firstName: (aUserEvent at: 'first_name');
		lastName: (aUserEvent at: 'last_name');
		username: (aUserEvent at: 'username')