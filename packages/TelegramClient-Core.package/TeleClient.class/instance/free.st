initialize-release
free

	self client free: handle.
	self
		client: nil;
		handle: nil.