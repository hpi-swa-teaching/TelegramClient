as yet unclassified
buildNameFieldWith: aBuilder
^ aBuilder pluggableTextSpec new
		model: self;
		getText: #nameDraft;
		editText: #nameDraft:;
		help: 'name your group' translated;
		frame: (0@0 corner: 1@0.5);
		yourself