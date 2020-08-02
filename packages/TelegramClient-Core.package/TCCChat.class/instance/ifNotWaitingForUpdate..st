controlling
ifNotWaitingForUpdate: aBlock

	self waitingForUpdate ifTrue: [^ self].

	self waitingForUpdate: true.
	aBlock value.