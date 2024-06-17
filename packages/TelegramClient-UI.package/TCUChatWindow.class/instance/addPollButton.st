drawing
addPollButton

	self pollButton: (TCUButton new
		extent: 50 @ 30;
		text: '|||';
		on: #mouseUp send: #showPollEditor to: self;
		name: 'openPollEditor';
		yourself).
	self inputBar addMorph: self pollButton.