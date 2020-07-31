accessing
isError

	^ self type = 'error' and: [self at: 'code' = 400]