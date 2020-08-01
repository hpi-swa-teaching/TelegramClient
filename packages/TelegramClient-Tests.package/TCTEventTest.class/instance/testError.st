as yet unclassified
testError

	self assert: (TCCEvent newFromTDLibEvent: (Dictionary newFrom: {'@type' -> 'error'. 'code' -> 400})) isError.