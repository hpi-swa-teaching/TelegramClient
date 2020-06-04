accessing
free

	self specificClient free: self handle.
	self
		specificClient: nil;
		handle: nil.