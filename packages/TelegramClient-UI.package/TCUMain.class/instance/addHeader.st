initialization
addHeader

	| header logoutButton |

	header := self createHeaderMorph.

	logoutButton := TCUButton new
	 	text: 'logout';
		on:#mouseUp send: #logout to: self;
		position: header position + 5.

	self
		addMorph: header;
		addTitle: 'Telegram' to: header;
		addMorph: logoutButton.