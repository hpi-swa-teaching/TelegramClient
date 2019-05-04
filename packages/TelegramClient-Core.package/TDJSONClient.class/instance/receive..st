as yet unclassified
receive: timeout
	| raw |
	raw := self receiveFrom: client withTimeout: timeout.
	(raw = nil) ifTrue: [^ nil].
	^ jsonParser deserializeString: raw.