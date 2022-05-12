library calls
receive: aTimeout

	| event |

	event := self specificClient receive: self handle with: aTimeout.
	event ifNil: [^ nil].
	^ Json new readFromString: event