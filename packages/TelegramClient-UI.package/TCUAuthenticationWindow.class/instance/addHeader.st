drawing
addHeader

	| header |
	header := RectangleMorph new
		borderWidth: 0;
		color: TCUDefaultValues colorGray;
		extent: self width @ self class defaultHeaderHeight;
		yourself.

	self
		addMorph: header;
		addTitle: 'Telegram' to: header.