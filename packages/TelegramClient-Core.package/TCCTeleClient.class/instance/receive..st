initialize-release
receive: aTimeoutNumber

	| event |
	
	event := self specificClient receive: self handle with: aTimeoutNumber.
	event ifNil: [^nil].
	Transcript show: event.
	^ Json new readFromString: event