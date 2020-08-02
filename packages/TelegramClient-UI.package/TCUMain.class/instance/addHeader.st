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
		addLogoutButtonTo: header withSpacing: self defaultSpacing;
		addCloseButtonTo: header withSpacing: self defaultSpacing deletes: self;
		addNewChatButtonTo: header withSpacing: self defaultSpacing.