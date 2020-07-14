defaultValues
addCloseButtonTo: aMorph withSpacing: aSpacing

	| closeButton |

	closeButton := TCUButton new
	 	text: 'close';
		on: #mouseUp send: #delete to: self.
	closeButton position: (aMorph position x + aSpacing) @ aSpacing.

	aMorph addMorph: closeButton.