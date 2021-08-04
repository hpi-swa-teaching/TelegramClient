library calls
receive: aNumber

	| event |

	event := self specificClient receive: self handle with: aNumber.
	event ifNil: [^ nil].
	^ Json new readFromString: event