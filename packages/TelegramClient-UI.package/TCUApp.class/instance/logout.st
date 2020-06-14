initialize-release
logout

	self core ifNotNil: [self core authHandler logout].
	self core: nil.
	self delete.