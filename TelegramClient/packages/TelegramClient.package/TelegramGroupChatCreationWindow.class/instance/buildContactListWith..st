as yet unclassified
buildContactListWith: aBuilder
^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		frame: (0@0.1 corner: 1@0.9);
		list: #contactNames;
		
		getSelectionList: #getSelectedContactIndexAt:;
		setSelectionList: #setSelectedContactIndexAt:put:;
		
		yourself