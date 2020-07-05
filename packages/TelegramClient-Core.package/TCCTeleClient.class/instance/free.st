accessing
free

	self specificClient ifNotNil: [self specificClient free: self handle].
	self
		specificClient: nil;
		handle: nil.
