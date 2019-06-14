as yet unclassified
buildMessageListWith: aBuilder
^ aBuilder pluggableListSpec new
		model: self;
		frame:  (0.3@0 corner: 1@0.8);
		list: #messageList;
		yourself