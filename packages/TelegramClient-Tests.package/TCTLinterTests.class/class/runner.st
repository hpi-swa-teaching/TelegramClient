as yet unclassified
runner

	Runner := nil.
	Runner ifNil: [self runner: (SLTestRunner new environment: SLDefaultEnvironment new)].
	^ Runner