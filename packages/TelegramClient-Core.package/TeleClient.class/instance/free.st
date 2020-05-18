initialize-release
free

	self specificClient free: handle.
	self
		specificClient: nil;
		handle: nil.