as yet unclassified
buildContactsListWith: aBuilder
^ aBuilder pluggableListSpec new
		model: self;
		frame: (0@0 corner: 0.3@1);
		list: #contactList;
		"getSelected: #currentSelection;
		 setSelected: #currentSelection:;"
		yourself