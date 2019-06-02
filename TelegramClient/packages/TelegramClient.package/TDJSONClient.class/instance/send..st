as yet unclassified
send: t1 
	| t2 |
	t2 := ReadWriteStream on: ''.
	t1 jsonWriteOn: t2.
	Debug log: ' [SEND]' , t2 contents.
	^ self class sendTo: client request: t2 contents