building
buildWith: aBuilder
^ aBuilder build: ( aBuilder pluggableWindowSpec new 
		model: self;
		label: 'Contacts';
 		extent: 200@400; 
		closeAction: #close;
		children: {
			self buildNameFieldWith: aBuilder.
			self buildContactListWith: aBuilder.
			self buildCreateGroupButtonWith: aBuilder};
		yourself)