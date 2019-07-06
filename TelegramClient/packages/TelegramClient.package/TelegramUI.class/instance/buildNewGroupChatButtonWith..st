as yet unclassified
buildNewGroupChatButtonWith: aBuilder
^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'New Groupchat';
		action: #openGroupChatCreation;
		frame: (0.2@0 corner: 0.4@0.05);
		yourself