testing
testWaitingForUpdate

	| marker |
	self assert: self chat waitingForUpdate not.

	marker := false.
	self chat ifNotWaitingForUpdate: [marker := true].
	self assert: marker.
	self assert: self chat waitingForUpdate.

	marker := false.
	self chat ifNotWaitingForUpdate: [marker := true].
	self assert: marker not.