testing
testPositionKnown

	self assert: self chat positionKnown not.
	self chat positionKnown: true.
	self assert: true equals: self chat positionKnown.