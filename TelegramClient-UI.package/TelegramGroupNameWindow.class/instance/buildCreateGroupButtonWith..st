as yet unclassified
buildCreateGroupButtonWith: aBuilder
^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Create Group';
		action: #createGroup;
		frame: (0@0.5 corner: 1@1);
		yourself