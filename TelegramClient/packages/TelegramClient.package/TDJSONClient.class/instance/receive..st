as yet unclassified
receive: timeout
	| raw |
	raw := self receiveFrom: client WithTimeout: timeout.
	^ jsonParser deserializeString: raw.