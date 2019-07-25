building
buildContactListWith: aBuilder
^ aBuilder pluggableListSpec new
		model: self;
		frame: (0@0 corner: 1@0.9);
		list: #contactNames;
		
		getIndex: #getContactIndex;
		setIndex: #setContactIndex:;
		
		yourself