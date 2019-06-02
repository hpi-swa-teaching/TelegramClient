accessing
jsonWriteOn: t1 
	t1 nextPut: ${.
	t1 nextPutAll: '"@type":"' , self funcName , '"'.
	self args
		associationsDo: [:t2 | 
			t1 nextPut: $,.
			t2 key jsonWriteOn: t1.
			t1 nextPut: $:.
			t2 value jsonWriteOn: t1].
	t1 nextPut: $}