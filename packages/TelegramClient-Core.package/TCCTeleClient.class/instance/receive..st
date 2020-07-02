initialize-release
receive: aTimeoutNumber

	| event |

	event := self specificClient receive: self handle with: aTimeoutNumber.
	event ifNil: [^ nil].
	self assert: (Smalltalk classNames includes: 'Json').
	^ Json new readFromString: event