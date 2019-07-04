as yet unclassified
buildWith: aBuilder
^ aBuilder build: ( aBuilder pluggableWindowSpec new 
		model: self;
		label: 'Contacts';
 		extent: 200@400; 
		closeAction: #close;
		children: {
			self buildContactListWith: aBuilder.
			self buildCreateChatButtonWith: aBuilder.
			};
		yourself)