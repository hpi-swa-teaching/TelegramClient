sending
send: aRequest thenDo: aBlock

	aRequest at: '@extra' put: (self registerCallback: aBlock).
	self send: aRequest.