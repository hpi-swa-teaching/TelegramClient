running
tearDown

	super tearDown.
	self core client specificClient isNil ifFalse: [self core client free].