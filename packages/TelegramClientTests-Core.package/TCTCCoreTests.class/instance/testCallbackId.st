testing
testCallbackId
	
	| block id1 id2 |
	block := [:anEvent | nil].
	id1 := self core registerCallback: block.
	id2 := self core registerCallback: block.
	
	self deny: id1 = id2.
	self assert: (self core pendingRequests at: id1) equals: block.
	self assert: (self core pendingRequests at: id2) equals: block.