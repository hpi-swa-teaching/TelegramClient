testing
testMessages

	| collection |
	
	collection := OrderedCollection newFrom: {TCCMessage new. TCCMessage new}.

	self chat messages: collection.
	self assert: collection equals: self chat messages.