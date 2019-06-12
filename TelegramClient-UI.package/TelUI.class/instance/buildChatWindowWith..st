as yet unclassified
buildChatWindowWith: aBuilder
^ aBuilder pluggableListSpec new
		model: self;
		frame: (0.3@0 corner: 1@0.8);
		list: #chat;
		"getSelected: #currentSelection;
		 setSelected: #currentSelection:;"
		
		yourself