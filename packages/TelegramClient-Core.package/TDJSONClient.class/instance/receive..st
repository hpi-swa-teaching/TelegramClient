as yet unclassified
receive: timeout
	| raw |
	raw := self class receiveFrom: client withTimeout: timeout.
	(raw = nil) ifTrue: [^ nil].
	^ jsonParser deserializeString: raw.