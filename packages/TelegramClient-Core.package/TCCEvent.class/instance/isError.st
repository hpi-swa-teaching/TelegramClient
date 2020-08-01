accessing
isError

	^ self type = 'error' and: [(self at: 'code' ifAbsent: 0) = 400]