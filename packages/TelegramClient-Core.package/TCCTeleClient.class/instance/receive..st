initialize-release
receive: aTimeoutNumber

	| event |
	
	event := self specificClient receive: self handle with: aTimeoutNumber.
	event ifNil: [^nil].
	
	^ Json new readFromString: event