building
buildChatListWith: aBuilder
^ aBuilder pluggableListSpec new
		model: self;
		frame: (0@0.05 corner: 0.3@1);
		list: #chatTitels;
		getIndex: #getChatIndex;
		setIndex: #setChatIndex:;
		
		yourself