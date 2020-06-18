initialization
addHeader

	| header |
	header := RectangleMorph new
		borderWidth: 0;
		color: TCUDefaultValues colorGray;
		extent: self width @ 40.

	self
		addMorph: header;
		addTitle: 'Telegram' to: header.