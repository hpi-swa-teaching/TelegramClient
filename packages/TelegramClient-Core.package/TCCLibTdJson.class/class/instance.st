accessing
instance

	instance ifNil: [ instance := super basicNew initialize ].
	^ instance