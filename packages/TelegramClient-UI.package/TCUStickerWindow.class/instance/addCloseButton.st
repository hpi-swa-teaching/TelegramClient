drawing
addCloseButton

	| closeButton |
	
	closeButton := TCUButton new
	 	extent: 30 @ 30;	
		text: 'X';
		color: TCUDefaultValues colorRed;
		on: #mouseUp send: #delete to: self;
		yourself.
	closeButton text color: Color white.
	closeButton position: self position.

	self addMorph: closeButton.