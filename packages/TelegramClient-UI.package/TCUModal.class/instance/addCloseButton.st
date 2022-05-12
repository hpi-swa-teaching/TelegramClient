initialization
addCloseButton

	| closeButton |

	closeButton := TCUButton new
	 	text: 'close';
		color: TCUDefaultValues colorRed;
		on: #mouseUp send: #delete to: self;
		yourself.
	closeButton text color: Color white.
	closeButton position: (self position x + self class defaultSpacing) @ self class defaultSpacing.

	self addMorph: closeButton.