accessing
shouldNotify

	^ (self isOutgoing not) and: [self chat muted not]