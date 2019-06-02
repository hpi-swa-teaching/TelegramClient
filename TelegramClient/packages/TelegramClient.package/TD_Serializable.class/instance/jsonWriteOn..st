as yet unclassified
jsonWriteOn: t1 
	| t2 t4 |
	t1 nextPut: ${.
	t2 := self class asString.
	t2 := t2 copyFrom: 4 to: t2 size.
	t1 nextPutAll: '"@type":"' , t2 , '"'.
	1
		to: self class instSize
		do: [:t3 | 
			t4 := self instVarAt: t3.
			t4 = nil
				ifFalse: [t1 nextPut: $,.
					t1 nextPut: $".
					t1
						nextPutAll: (self class instVarNameForIndex: t3).
					t1 nextPut: $".
					t1 nextPut: $:.
					t4 jsonWriteOn: t1]].
	t1 nextPut: $}