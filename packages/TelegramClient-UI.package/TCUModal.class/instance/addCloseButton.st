initialization
addCloseButton

	| closeButton |

	closeButton := TCUButton new
	 	text: 'close';
		color: TCUDefaultValues colorRed;
		on: #mouseUp send: #delete to: self.
	closeButton text color: Color white.
	closeButton position: (self position x + self defaultSpacing) @ self defaultSpacing.

	self addMorph: closeButton.