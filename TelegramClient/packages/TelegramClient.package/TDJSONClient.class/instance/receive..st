lib-calls
receive: timeout
	| raw |
	raw := self class receiveFrom: client withTimeout: timeout.
	raw isNil ifTrue: [^ nil].
	^ jsonParser deserializeString: raw