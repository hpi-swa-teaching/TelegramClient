instance creation
newFrom: anEvent

	^ self new
		id: (anEvent at: 'id');
		firstName: (anEvent at: 'first_name');
		lastName: (anEvent at: 'last_name');
		username: (anEvent at: 'username')