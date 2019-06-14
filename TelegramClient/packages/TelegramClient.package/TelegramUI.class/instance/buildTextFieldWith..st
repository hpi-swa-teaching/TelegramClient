as yet unclassified
buildTextFieldWith: aBuilder
^ aBuilder pluggableTextSpec new
		model: self;
		"getText: #text;"
		"editText: #currentText:;"
		help: 'write your message' translated;
		frame: (0.3@0.8 corner: 0.9@1);
		yourself