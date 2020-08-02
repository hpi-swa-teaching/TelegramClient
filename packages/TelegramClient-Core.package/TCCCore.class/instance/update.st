accessing
update

	| event |

	event := self client receive: 0.05.
	event ifNotNil: [self handleEvent: (TCCEvent newFromTDLibEvent: event)].