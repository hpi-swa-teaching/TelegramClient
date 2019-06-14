as yet unclassified
buildChatListWith: aBuilder
^ aBuilder pluggableListSpec new
		model: self;
		frame: (0@0 corner: 0.3@1);
		list: #chatTitels;
		getSelected: #getSelectedChatIndex;
		setSelected: #setSelectedChatIndex:;
		
		yourself