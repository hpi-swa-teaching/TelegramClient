sending
send: aRequest thenDo: aBlock

	| callbackId |
	
	callbackId := self registerCallback: aBlock.
	aRequest at: '@extra' put: callbackId.
	self send: aRequest