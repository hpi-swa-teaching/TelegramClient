instance creation
newFrom: anEvent

	| user |
	user := self new
		id: (anEvent at: 'id');
		firstName: (anEvent at: 'first_name');
		lastName: (anEvent at: 'last_name');
		username: (anEvent at: 'username').
		
	(anEvent at: 'photo') ifNotNil: [
		user photoId: (((anEvent at: 'photo') at: 'small') at: 'id').
	].

	^ user