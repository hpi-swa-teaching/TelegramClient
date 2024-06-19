drawing
addNextButton

	| nextButton |
	
	nextButton := TCUButton new
	 	extent: 30 @ 30;	
		text: '>';
		color: TCUDefaultValues colorLightBlue;
		on: #mouseUp send: #showNextSet to: self;
		yourself.
	nextButton text color: Color white.
	nextButton position: self position + (70 @ 0).

	self addMorph: nextButton.