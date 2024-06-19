drawing
addFileButton

	self fileButton: (TCUButton new
		text: 'Select File';
		on: #mouseUp send: #buttonFileSelectPressed to: self;
		name: 'selectFile';
		yourself).
	self inputBar addMorph: self fileButton.