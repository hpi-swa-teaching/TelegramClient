submorphs-add/remove
delete

	self core freeClient.
	self
		deleteMorph;
		triggerEvent: #delete.