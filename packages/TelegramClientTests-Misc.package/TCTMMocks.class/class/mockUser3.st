user
mockUser3

	^ TCCUser new
		firstName: 'LoggedIn';
		lastName: 'User';
		username: 'loggedinusername';
		id: 0;
		photoId: self mockImageId;
		yourself