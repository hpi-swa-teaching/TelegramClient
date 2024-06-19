drawing
addPreviousButton

	| previousButton |
	
	previousButton := TCUButton new
	 	extent: 30 @ 30;	
		text: '<';
		color: TCUDefaultValues colorLightBlue;
		on: #mouseUp send: #showPreviousSet to: self;
		yourself.
	previousButton text color: Color white.
	previousButton position: self position + (35 @ 0).

	self addMorph: previousButton.