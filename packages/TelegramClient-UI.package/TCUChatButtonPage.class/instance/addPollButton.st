drawing
addPollButton

	self pollButton: (TCUButton new
		text: '|||';
		on: #mouseUp send: #createPollEditor to: self chatWindow;
		name: 'openPollEditor';
		yourself).
	self buttonMenu addMorph: self pollButton.