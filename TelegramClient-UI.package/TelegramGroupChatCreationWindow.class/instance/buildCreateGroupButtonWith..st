building
buildCreateGroupButtonWith: aBuilder
^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Create Group Chat';
		action: #createGroup;
		frame: (0@0.9 corner: 1@1);
		yourself