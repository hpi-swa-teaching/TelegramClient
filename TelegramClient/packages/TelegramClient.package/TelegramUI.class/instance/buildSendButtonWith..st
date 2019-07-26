building
buildSendButtonWith: aBuilder
^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Send';
		action: #sendMessage;
		frame: (0.9@0.9 corner: 1@1);
		yourself