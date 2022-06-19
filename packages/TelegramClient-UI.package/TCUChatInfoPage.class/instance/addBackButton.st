drawing
addBackButton

	self backButton: (TCUButton new
		text: 'Back';
		on: #mouseUp send: #buttonCancelPressed to: self;
		name: 'infoBackButton';
		yourself).

	self infoBar addMorph: self backButton.
	self backButton position: (self infoBar left + self class defaultSpacing) @ (self infoBar top + self class defaultSpacing).