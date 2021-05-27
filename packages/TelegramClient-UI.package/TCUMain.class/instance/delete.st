submorphs-add/remove
delete

	self core client notNil ifTrue: [self core client free].
	super delete.