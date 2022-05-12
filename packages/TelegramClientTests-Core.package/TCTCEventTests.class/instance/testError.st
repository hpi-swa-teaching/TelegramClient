testing
testError

	self assert: (TCCEvent newFromTdlibEvent: (Dictionary newFrom: {'@type' -> 'error'. 'code' -> 400})) isError.