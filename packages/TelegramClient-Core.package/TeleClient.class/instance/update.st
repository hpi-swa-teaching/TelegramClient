initialize-release
update

	| event |
	
	event := self receive: 0.05 .
	event isNil ifFalse: [self handleEvent: event].
