drawing
addCloseButtonTo: aMorph withSpacing: aSpacing deletes: aDeletableMorph

	| closeButton |

	closeButton := TCUButton new
	 	text: 'close';
		color: TCUDefaultValues colorRed;
		on: #mouseUp send: #delete to: aDeletableMorph.
	closeButton text color: Color white.
	closeButton position: (aMorph position x + aSpacing) @ aSpacing.

	aMorph addMorph: closeButton.