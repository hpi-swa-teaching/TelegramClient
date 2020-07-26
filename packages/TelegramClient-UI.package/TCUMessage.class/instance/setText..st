accessing
setText: aString

	|expectedWidth|
	self text: (TextMorph new contents: aString;rightFlush;wrapFlag:true;width:280;margins:5@4;borderWidth:1;hResizing: #rigid).
	expectedWidth:=self text textStyle fontArray first widthOfString: aString.
	(expectedWidth<= 280)
		ifTrue:[self text width:expectedWidth+50.self width:expectedWidth+80].
	self text color: Color white.
	self text lock.
	self borderWidth: 1.
	self borderColor: Color green.
	self addMorphCentered:  self text.