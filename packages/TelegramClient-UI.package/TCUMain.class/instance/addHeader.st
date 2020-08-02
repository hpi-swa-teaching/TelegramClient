drawing
addHeader

	| header |

	header := RectangleMorph new
		borderWidth: 0;
		color: TCUDefaultValues colorGray;
		extent: self width @ self defaultHeaderHeight.

	self
		addMorph: header;
		addTitle: 'Telegram' to: header;
		addLogoutButtonTo: header withSpacing: 5;
		addCloseButtonTo: header withSpacing: 5 deletes: self;
		"addInputFieldTo: header withSpacing: 5;"
		addNewChatButtonTo: header withSpacing: 5.