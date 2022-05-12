library calls
free

	self isAlive ifTrue: [self specificClient free: self handle].
	self
		specificClient: nil;
		handle: nil.