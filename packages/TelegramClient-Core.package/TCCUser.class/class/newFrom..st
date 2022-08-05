instance creation
newFrom: anEvent

	| user |
	user := self new
		id: (anEvent at: 'id');
		firstName: (anEvent at: 'first_name');
		lastName: (anEvent at: 'last_name');
		username: (anEvent at: 'username').
		
	anEvent at: 'profile_photo' ifPresent: [:profilePhoto | user photoId: ((profilePhoto at: 'small') at: 'id')] ifAbsent: [].

	^ user