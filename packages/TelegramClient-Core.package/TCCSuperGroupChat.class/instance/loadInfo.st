loading
loadInfo

	self loadGeneralInfo.
	self isChannel ifFalse: [
		self loadMembers.
	].