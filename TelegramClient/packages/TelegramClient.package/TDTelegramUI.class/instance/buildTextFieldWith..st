building
buildTextFieldWith: aBuilder
^ aBuilder pluggableTextSpec new
		model: self;
		getText: #messageDraft;
		editText: #messageDraft:;
		help: 'write your message' translated;
		frame: (0.3@0.8 corner: 0.9@1);
		yourself