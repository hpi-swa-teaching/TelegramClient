initialize-release
delete

	self auth ifNotNil: [self auth delete].
	self main ifNotNil: [self main delete].
	self core ifNotNil: [self core client free].