drawing
addbuttonMenuButton

	self buttonMenuButton: (TCUButton new
		text: '+';
		on: #mouseUp send: #createButtonMenu to: self;
		name: 'openButtonMenu';
		yourself).
	self inputBar addMorph: self buttonMenuButton.