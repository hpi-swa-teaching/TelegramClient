user
mockUsers

	^ OrderedCollection newFrom: {
		TCCUser new
		firstName: 'Paul';
		lastName: 'Panter';
		username: 'paulp';
		id: 1673511834
		.
		TCCUser new
		firstName: 'Tom';
		lastName: 'Tiger';
		username: 'tomt';
		id: 1634653456
	}