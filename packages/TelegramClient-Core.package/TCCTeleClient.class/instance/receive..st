initialize-release
receive: aTimeoutNumber

	| event |
	
	event := self specificClient receive: self handle with: aTimeoutNumber.
	event ifNil: [^nil].
	"Transcript show: event, Character cr."
	^ Json new readFromString: event