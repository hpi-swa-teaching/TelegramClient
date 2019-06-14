as yet unclassified
buildWith: aBuilder
^ aBuilder build: ( aBuilder pluggableWindowSpec new 
		model: self;
		label: 'Telegram';
 		extent: 500@400; 
		closeAction: #close;
		children: {
			self buildChatListWith: aBuilder.
			self buildTextFieldWith: aBuilder.
			self buildSendButtonWith: aBuilder.
			self buildMessageListWith: aBuilder.
			};
		yourself)