initialization
addCloseButton

	| closeButton |

	closeButton := TCUButton new
	 	text: 'close';
		color: TCUDefaultValues colorRed;
		on: #mouseUp send: #delete to: self main;
		yourself.
	closeButton text color: Color white.
	closeButton position: (self main position x + self class defaultSpacing) @ self class defaultSpacing.

	self addMorph: closeButton.