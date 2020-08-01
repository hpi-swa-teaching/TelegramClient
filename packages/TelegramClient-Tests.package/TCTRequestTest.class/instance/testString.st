testing
testString

	self assert: (self request asString includesSubstring: '"@type":"test"').
	self assert: (self request asString includesSubstring: '"code":"0"').
	self assert: (self request asString startsWith: '{').
	self assert: (self request asString endsWith: '}').