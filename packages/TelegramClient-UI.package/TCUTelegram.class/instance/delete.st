initialize-release
delete

	self auth ifNotNil: [self auth superDelete].
	self main ifNotNil: [self main superDelete].
	self core ifNotNil: [self core client free].