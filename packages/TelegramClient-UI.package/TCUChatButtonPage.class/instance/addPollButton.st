drawing
addPollButton

	self pollButton: (TCUButton new
		extent: 100 @ 30;
		text: '|||';
		on: #mouseUp send: #createPollEditor to: self chatWindow;
		name: 'openPollEditor';
		yourself).
	self buttonMenu addMorph: self pollButton.