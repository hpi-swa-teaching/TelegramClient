testing
testNoError

	self assert: (TCCEvent newFromTdlibEvent: (Dictionary newFrom: {'@type' -> 'authentication'. 'code' -> 400})) isError not.
	self assert: (TCCEvent newFromTdlibEvent: (Dictionary newFrom: {'@type' -> 'error'. 'code' -> 200})) isError not.
	self assert: (TCCEvent newFromTdlibEvent: (Dictionary newFrom: {'@type' -> 'authentication'. 'code' -> 200})) isError not.