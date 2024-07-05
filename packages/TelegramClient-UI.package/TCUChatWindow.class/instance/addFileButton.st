drawing
addFileButton

	self fileButton: (TCUButton new
		extent: 100 @ 30;
		text: 'Select File';
		on: #mouseUp send: #buttonFileSelectPressed to: self;
		name: 'selectFile';
		yourself).
	self buttonMenu addMorph: self fileButton.