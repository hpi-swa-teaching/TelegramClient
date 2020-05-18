initialize-release
update

	| event |
	
	event := self receive: 1.	
	event isNil ifFalse: [self handleEvent: event].
