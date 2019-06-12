as yet unclassified
buildWith: aBuilder
^ aBuilder build: ( aBuilder pluggableWindowSpec new 
		model: self;
		label: 'Telegram';
 		extent: 500@400; 
		children: {
			self buildContactsListWith: aBuilder.
			self buildTextFieldWith: aBuilder.
			self buildSendButtonWith: aBuilder.
			self buildChatWindowWith: aBuilder.
			};
		yourself)