as yet unclassified
addbuttonMenuButton

	self buttonMenuButton: (TCUButton new
		extent: 50 @ 30;
		text: '+';
		on: #mouseUp send: #createButtonMenu to: self;
		name: 'openButtonMenu';
		yourself).
	self inputBar addMorph: self buttonMenuButton.