as yet unclassified
buildSendButtonWith: aBuilder
^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Send';
		action: #addCurrentMessege;
		frame: (0.9@0.9 corner: 1@1);
		yourself