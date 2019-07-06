as yet unclassified
buildWith: aBuilder
^ aBuilder build: ( aBuilder pluggableWindowSpec new 
		model: self;
		label: 'Name your Group';
 		extent: 200@100; 
		closeAction: #close;
		children: {
			self buildNameFieldWith: aBuilder.
			self buildCreateGroupButtonWith: aBuilder.
			};
		yourself)