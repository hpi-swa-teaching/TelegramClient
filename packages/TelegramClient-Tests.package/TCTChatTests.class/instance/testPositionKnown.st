testing
testPositionKnown

	self assert: self chat positionKnown not.
	self chat positionKnown: true.
	self assert: self chat positionKnown equals: true.