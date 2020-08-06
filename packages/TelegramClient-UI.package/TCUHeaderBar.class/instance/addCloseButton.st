initialization
addCloseButton

	| closeButton |

	closeButton := TCUButton new
	 	text: 'close';
		color: TCUDefaultValues colorRed;
		on: #mouseUp send: #delete to: self main.
	closeButton text color: Color white.
	closeButton position: (self main position x + self defaultSpacing) @ self defaultSpacing.

	self addMorph: closeButton.