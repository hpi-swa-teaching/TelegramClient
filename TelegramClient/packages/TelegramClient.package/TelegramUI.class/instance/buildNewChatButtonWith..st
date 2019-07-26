building
buildNewChatButtonWith: aBuilder
^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'New Chat';
		action: #openContacts;
		frame: (0@0 corner: 0.2@0.05);
		yourself