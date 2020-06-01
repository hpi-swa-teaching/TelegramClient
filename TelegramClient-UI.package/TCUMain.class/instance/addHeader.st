initialization
addHeader

	| header |
	header := RectangleMorph new
		borderWidth: 0;
		color: TCUDefaultValues colorGray;
		extent: self width @ self defaultHeaderHeight.
	
	self 
		addMorph: header;
		addTitle: 'Telegram' to: header.