drawing
addBackButton

	| backButton |
	
	backButton := TCUButton new
		text: 'Back';
		on: #mouseDown send: #buttonBackPressed to: self;
		name: 'infoBackButton';
		yourself.
	
	self infoBar addMorph: backButton.
	backButton position: (self infoBar left + self defaultSpacing) @ (self infoBar top + self defaultSpacing).