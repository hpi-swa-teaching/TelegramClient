accessing
ifWaitingForUpdate: aBlock

	self waitingForUpdate ifFalse: [
		self waitingForUpdate: true.
		aBlock value].