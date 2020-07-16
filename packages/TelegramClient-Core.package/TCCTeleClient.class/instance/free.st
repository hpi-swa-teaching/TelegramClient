accessing
free

	self specificClient isNil ifFalse: [self specificClient free: self handle].
	self
		specificClient: nil;
		handle: nil.