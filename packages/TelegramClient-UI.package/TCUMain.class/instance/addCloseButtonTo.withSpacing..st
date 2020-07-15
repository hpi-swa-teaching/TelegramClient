defaultValues
addCloseButtonTo: aMorph withSpacing: aSpacing

	| closeButton |

	closeButton := TCUButton new
	 	text: 'close';
		color: TCUDefaultValues colorRed;
		on: #mouseUp send: #delete to: self.
	closeButton text color: Color white.
	closeButton position: (aMorph position x + aSpacing) @ aSpacing.

	aMorph addMorph: closeButton.