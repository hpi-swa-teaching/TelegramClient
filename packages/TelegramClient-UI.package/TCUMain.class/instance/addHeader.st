initialization
addHeader

	| header logoutButton |
	
	header := RectangleMorph new
		borderWidth: 0;
		color: TCUDefaultValues colorGray;
		extent: self width @ self defaultHeaderHeight.
		
	logoutButton := TCUButton new
	 	text: 'logout';
		on:#mouseUp send: #logout to: self;
		position: header position + 5.
		
	self 
		addMorph: header;
		addTitle: 'Telegram' to: header;
		addMorph: logoutButton.
		
	